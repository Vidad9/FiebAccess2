package com.example.gerenciamentodetarefascanalyoutube;

// 7

import android.app.DatePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.Toast;
import android.widget.ToggleButton;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;

import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;

public class BkpTaskAddEditActivity extends AppCompatActivity implements DatePickerDialog.OnDateSetListener {

//    public static final String EXTRA_ID = "id";
//    public static final String EXTRA_DESCRIPTION = "description";
//    public static final String EXTRA_NOTE = "note";
//    public static final long EXTRA_ESTIMATED_DATE = 0;
//    public static final float EXTRA_PRIORITY_LEVEL = 0.0f;
//    public static final boolean EXTRA_FINISHED = false;

    private EditText mEditDescription, mEditNote;
    private Button mButtonSave, mButtonEstimatedDate;
    private RatingBar mRatingPriorityLevel;
    private ToggleButton mToggleFinish;

    private long mEstimatedDate;
    private int mFinished;

    private void displayEstimatedStartDate(){
        String estimateDateString = java.text.DateFormat.getDateInstance(DateFormat.FULL).format(new Date());
        mButtonEstimatedDate.setText(estimateDateString);

    }

    private boolean isRequired(){
        if(TextUtils.isEmpty(mEditDescription.getText()) ||
                TextUtils.isEmpty(mEditNote.getText())) {
            return true;
        } else {
            return false;
        }
    }

    private void saveTask(){

        if( isRequired() ){
            Toast.makeText(this, "Informe descrição e/ou observação", Toast.LENGTH_SHORT).show();
            return;
        }

        Intent replyIntent = new Intent();

        int id = getIntent().getIntExtra("EXTRA_ID", -1);
        if( id != -1 ){
            replyIntent.putExtra("EXTRA_ID", id);
        }

        String description = mEditDescription.getText().toString().trim();
        String note = mEditNote.getText().toString().trim();
        float priority = mRatingPriorityLevel.getRating();
        //boolean finished = mToggleFinish.isChecked();

        mFinished = 0;
        if(mToggleFinish.isChecked()){
            mFinished = 1;
        }


        replyIntent.putExtra("EXTRA_DESCRIPTION", description);
        replyIntent.putExtra("EXTRA_NOTE", note);
        replyIntent.putExtra(String.valueOf("EXTRA_ESTIMATED_DATE"), mEstimatedDate);
        replyIntent.putExtra(String.valueOf("EXTRA_PRIORITY_LEVEL"), priority);
        //replyIntent.putExtra(String.valueOf("EXTRA_FINISHED"), finished);
        replyIntent.putExtra(String.valueOf("EXTRA_FINISHED"), mFinished);

        setResult(RESULT_OK, replyIntent);
        finish();


    }

    public void showCalendar(){
        DialogFragment datePicker = new BkpDatePickerFragment();
        datePicker.show(getSupportFragmentManager(), "date picker");
    }

    @Override
    public void onDateSet(DatePicker view , int year , int month , int dayOfMonth){
        Calendar c = Calendar.getInstance();
        c.set(Calendar.YEAR, year);
        c.set(Calendar.MONTH, month);
        c.set(Calendar.DAY_OF_MONTH, dayOfMonth);

        String currentDateString = DateFormat.getDateInstance(DateFormat.FULL).format(c.getTime());
        mButtonEstimatedDate.setText(currentDateString);
        mEstimatedDate = c.getTimeInMillis();

        Toast.makeText(this, ""+c.getTimeInMillis(), Toast.LENGTH_SHORT).show();

    }

    public class ClickButtonEstimatedDate implements View.OnClickListener{
        @Override
        public void onClick(View view){
            showCalendar();
        }
    }

    public class ClickButtonSave implements View.OnClickListener{
        @Override
        public void onClick(View view){
            saveTask();
        }
    }

    @Override
    public void onCreate(Bundle savedInstance){
        super.onCreate(savedInstance);
        setContentView(R.layout.activity_add_edit_task);

        getSupportActionBar().setHomeAsUpIndicator(R.drawable.ic_close);

        mEditDescription = findViewById(R.id.editText_task_description);
        mEditNote = findViewById(R.id.editText_task_note);

        mButtonEstimatedDate = findViewById(R.id.button_estimated_date_task);
        mButtonEstimatedDate.setOnClickListener(new ClickButtonEstimatedDate());

        mRatingPriorityLevel = findViewById(R.id.rating_task_priority_level);

        mToggleFinish = findViewById(R.id.toggle_task_finish);

        mButtonSave = findViewById(R.id.button_save_task);
        mButtonSave.setOnClickListener(new ClickButtonSave());

        Intent intent = getIntent();
        if( intent.hasExtra("EXTRA_ID") ) {
            setTitle("Editar Tarefa");
            mEditDescription.setText(intent.getStringExtra("EXTRA_DESCRIPTION"));
            mEditNote.setText(intent.getStringExtra("EXTRA_NOTE"));
            mEstimatedDate = intent.getLongExtra(String.valueOf("EXTRA_ESTIMATED_DATE"), 0); //
            mRatingPriorityLevel.setRating(intent.getFloatExtra(String.valueOf("EXTRA_PRIORITY_LEVEL"),0.0f));
            mToggleFinish.setChecked(intent.getBooleanExtra(String.valueOf("EXTRA_FINISHED"),false));

            mFinished = intent.getIntExtra("EXTRA_TASK_FINISHED", 0);

            if( mFinished == 0 ) {
                mToggleFinish.setChecked(false);
            } else {
                mToggleFinish.setChecked(true);
            }

        } else {
            setTitle("Nova tarefa");
            mEstimatedDate = System.currentTimeMillis();
            displayEstimatedStartDate();
        }

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu){
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.save_menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item){
        switch ( item.getItemId() ) {
            case R.id.action_menu_save:
                saveTask();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

}
