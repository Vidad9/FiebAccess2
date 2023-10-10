package com.example.dicesimulator2021;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.navigation.NavigationBarView;

import java.util.Random;

public class ChoiceActivity extends AppCompatActivity {


    private FirstFragment mFirstFragment = new FirstFragment();
    private WinFragment mWinFragment = new WinFragment();
    private LoseFragment mLoseFragment = new LoseFragment();
    private PlayingTimeFragment mPlayingTimeFragment = new PlayingTimeFragment();
    public BottomNavigationView mBottomNavigationView;
    public int mNumberMatches = 0;
    public int mNumberWins = 0;


    private final Random rnd = new Random();    //private Random rnd = new Random();

    public String mMessageDisplay;  //  private String mMessageDisplay;

    public ChipGroup mChipGroupOption;  //    private ChipGroup mChipGroupOption;
    private int mChipSelected = 0;

    public Button mButtonStart;    // private Button mButtonStart;

    public TextView mTextViewDice;  // private TextView mTextViewDice;

    private ImageView mImageViewDice;  //     private ImageView mImageViewDice;

    private void showResult(int value){
//        mMessageDisplay = "Acertou com a sua escolha do " + value;
//        if( value != mChipSelected ) {
//            mMessageDisplay = "Ops! Não foi dessa vez";
//        }
        mMessageDisplay = "Errou...";
        if(value == mChipSelected){
            mNumberWins++;
            mMessageDisplay = "Acertou com " + value;
        }
        Toast.makeText(this, mMessageDisplay, Toast.LENGTH_SHORT).show();
    }

    private void showImage(int value){
        switch (value) {
            case 1: mImageViewDice.setImageResource(R.drawable.dice1); break;
            case 2: mImageViewDice.setImageResource(R.drawable.dice2); break;
            case 3: mImageViewDice.setImageResource(R.drawable.dice3); break;
            case 4: mImageViewDice.setImageResource(R.drawable.dice4); break;
            case 5: mImageViewDice.setImageResource(R.drawable.dice5); break;
            case 6: mImageViewDice.setImageResource(R.drawable.dice6); break;
        }
       // showResult(value);
    }

    private void launchDice(){
        int number = rnd.nextInt(6) + 1;
        mTextViewDice.setText("" + number);
        mNumberMatches++;
        showImage(number);
        showResult(number);
    }

    public class FilterChipSelectedInTheGroup implements ChipGroup.OnCheckedChangeListener{
        @Override
        public void onCheckedChanged(ChipGroup group, int checkedId) {
            switch (group.getCheckedChipId()) {
                case R.id.chip1: mChipSelected=1; break;
                case R.id.chip2: mChipSelected=2; break;
                case R.id.chip3: mChipSelected=3; break;
                case R.id.chip4: mChipSelected=4; break;
                case R.id.chip5: mChipSelected=5; break;
                case R.id.chip6: mChipSelected=6; break;
            }
        }
    }

    public class ClickStartPlay implements View.OnClickListener{
        @Override
        public void onClick(View view) {
            launchDice();
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_choice);

        mChipGroupOption = findViewById(R.id.chipGroup_option);
        mChipGroupOption.setOnCheckedChangeListener(new FilterChipSelectedInTheGroup());

        mButtonStart = findViewById(R.id.button_start);
        mButtonStart.setOnClickListener(new ClickStartPlay());

        mImageViewDice = findViewById(R.id.imageView_dice);
        mImageViewDice.setOnClickListener(new ClickStartPlay());

        mTextViewDice = findViewById(R.id.textView_dice_value);

        mBottomNavigationView = findViewById(R.id.bottomNavigationView);
        mBottomNavigationView.setOnItemSelectedListener(new ClickItemBottom());
    }

    private void setDisableWidGets(boolean value){
        if(value) {
            mChipGroupOption.setVisibility(View.GONE);
            mButtonStart.setVisibility(View.GONE);
            mImageViewDice.setVisibility(View.GONE);
            mTextViewDice.setVisibility(View.GONE);
        }else{
            mChipGroupOption.setVisibility(View.VISIBLE);
            mButtonStart.setVisibility(View.VISIBLE);
            mImageViewDice.setVisibility(View.VISIBLE);
            mTextViewDice.setVisibility(View.VISIBLE);
        }
    }

    private void setCurrentFragment(Fragment currentFragment, long value){
        Bundle bundle = new Bundle();
        bundle.putLong("message", value);
        currentFragment.setArguments(bundle);
        getSupportFragmentManager().beginTransaction().replace(R.id.frameLayout_message, currentFragment).commit();
    }

    public class ClickItemBottom implements NavigationBarView.OnItemSelectedListener {
        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()){
                case R.id.item_game: setDisableWidGets(false); setCurrentFragment(mFirstFragment, mNumberMatches);  return true;
                case R.id.item_win: setDisableWidGets(true); setCurrentFragment(mWinFragment, mNumberWins);  return true;
                case R.id.item_lose: setDisableWidGets(true); setCurrentFragment(mLoseFragment, (mNumberMatches-mNumberWins));  return true;
                case R.id.item_time: setDisableWidGets(true); setCurrentFragment(mPlayingTimeFragment, 1763399099);  return true;
            }
            return false;
        }
    }

}
