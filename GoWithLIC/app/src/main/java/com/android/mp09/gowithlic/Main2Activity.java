package com.android.mp09.gowithlic;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class Main2Activity extends AppCompatActivity {
TextView tv_hd, tv_bd;
Button share, call;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        tv_hd=(TextView)findViewById(R.id.tv_heading);
        tv_bd=(TextView)findViewById(R.id.tv_content);
        call=(Button)findViewById(R.id.btn_dial);
        share=(Button)findViewById(R.id.btnShare);
        String heading=getIntent().getExtras().getString("key_head");
        String body=getIntent().getExtras().getString("key_body");
        tv_hd.setText(heading);
        tv_bd.setText(body);
        call.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent callIntent=new Intent(Intent.ACTION_DIAL);
                callIntent.setData(Uri.parse("tel:+919326545895"));
                startActivity(callIntent);
            }
        });
    }
    public void share(View view)
    {
        Intent in=new Intent(Intent.ACTION_SEND);
        in.setType("text/plain");
        String shareSub="Shared by GoWithLIC App.";
        String shareBody=tv_bd.getText().toString();
        in.putExtra(Intent.EXTRA_SUBJECT, shareSub);
        in.putExtra(Intent.EXTRA_TEXT, shareBody);
        startActivity(Intent.createChooser(in,"Share Using"));
    }

}
