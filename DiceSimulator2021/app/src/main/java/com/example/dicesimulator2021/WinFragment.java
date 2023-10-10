package com.example.dicesimulator2021;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.fragment.app.Fragment;

public class WinFragment extends Fragment {

    private TextView mTextViewSecondFragment;

    public WinFragment(){}

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState){
        View view = inflater.inflate(R.layout.fragment_win, container, false);
        mTextViewSecondFragment = view.findViewById(R.id.textView_secondFragment);
        long value = getArguments().getLong("message");
        mTextViewSecondFragment.setText(""+value);
        return view;
    }
}
