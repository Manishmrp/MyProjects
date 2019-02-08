package com.android.mp09.gowithlic;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
Button b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, btnCall, btnDetails;
Button b16, b17, b18, b19, b20, b21, b22, b23, b24, b25, b26, b27, b28, b29, b30, b31, b32, b33;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnCall=(Button)findViewById(R.id.btn_call);
        btnDetails=(Button)findViewById(R.id.btn_details);
        //BUTTONS OF ENDOWMENT PLANS SECTION
        b1=(Button)findViewById(R.id.btn_new_endowment814);
        b2=(Button)findViewById(R.id.btn_jeevan_anand815);
        b3=(Button)findViewById(R.id.btn_single_premium_endowment817);
        b4=(Button)findViewById(R.id.btn_jeevan_rakshak827);
        b5=(Button)findViewById(R.id.btn_limited_premium_endowment830);
        b6=(Button)findViewById(R.id.btn_jeevan_lakshya833);
        b7=(Button)findViewById(R.id.btn_jeevan_labh836);
        b8=(Button)findViewById(R.id.btn_jeevan_pragati838);
        b9=(Button)findViewById(R.id.btn_aadhar_stambh843);
        b10=(Button)findViewById(R.id.btn_aadhar_shila844);
        //BUTTONS OF WHOLE LIFE PLANS SECTION
        b11=(Button)findViewById(R.id.btn_jeevan_umang845);
        //BUTTONS OF MONEY BACK PLANS SECTION
        b12=(Button)findViewById(R.id.btn_20years_money_back820);
        b13=(Button)findViewById(R.id.btn_bima_bachat816);
        b14=(Button)findViewById(R.id.btn_25years_money_back821);
        b15=(Button)findViewById(R.id.btn_child_money_back832);
        b16=(Button)findViewById(R.id.btn_jeevan_tarun834);
        b17=(Button)findViewById(R.id.btn_jeevan_shiromani847);
        b18=(Button)findViewById(R.id.btn_bima_shree848);
        //BUTTONS OF SINGLE PREMIUM PLANS SECTION
        b19=(Button)findViewById(R.id.btn_single_premium_endowment817_sp);
        b20=(Button)findViewById(R.id.btn_bima_bachat816_sp);
        b21=(Button)findViewById(R.id.btn_jeevan_nidhi_single_premium818);
        //BUTTONS OF TERM PLANS SECTION
        b22=(Button)findViewById(R.id.btn_anmol_jeevan822);
        b23=(Button)findViewById(R.id.btn_amulya_jeevan823);
        //BUTTONS OF PENSIONS PLANS SECTION
        b24=(Button)findViewById(R.id.btn_jeevan_nidhi818);
        b25=(Button)findViewById(R.id.btn_jeevan_akshay_vi189);
        b26=(Button)findViewById(R.id.btn_jeevan_nidhi_single_premium818_pen);
        b27=(Button)findViewById(R.id.btn_pradhan_mantri_vaya_vandana_yojna842);
        b28=(Button)findViewById(R.id.btn_jeevan_shanti850);
        //BUTTONS OF HEALTHS PLANS SECTION
        b29=(Button)findViewById(R.id.btn_jeevan_arogya904);
        b30=(Button)findViewById(R.id.btn_cancer_cover905);
        //BUTTONS OF CHILDS PLANS SECTION
        b31=(Button)findViewById(R.id.btn_child_money_back832_child);
        b32=(Button)findViewById(R.id.btn_jeevan_tarun834_child);
        b33=(Button)findViewById(R.id.btn_single_premium_endowment817_child);
        btnCall.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent callIntent=new Intent(Intent.ACTION_DIAL);
                callIntent.setData(Uri.parse("tel:+919326545895"));
                startActivity(callIntent);
            }
        });
        btnDetails.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent detailsIntent=new Intent(MainActivity.this, Main3Activity.class);
                startActivity(detailsIntent);
            }
        });
    }
    public void func_814(View view)
    {
        String head=b1.getText().toString();
        String body="Plan :New Endowment (814)\n" +
                "\n" +
                "Product Summary :\n" +
                "New Endowment Plan (814) is a regular premium, non-linked, with profits Endowment Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "12 to 35 years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "8 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "\n" +
                "\n" +
                "Policy Benefits :\n" +
                "\n" +
                "\n" +
                "On Death :\n" +
                "Sum Assured + Vested Bonus + FAB if any.,OR\n" +
                "10 times of Annualized Premium, OR\n" +
                "105%of all Premiums paid as on death,\n" +
                "WHICHEVER IS HIGHER.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Basic Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term provided at least 3 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after payment of premiums for at least 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).\n" +
                "\n" +
                "Proposal Form : 300/340/360 shall be used under this plan.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_815(View view)
    {
        String head=b2.getText().toString();
        String body="Plan :Jeevan Anand (815)\n" +
                "\n" +
                "Product Summary :\n" +
                "New Jeevan Anand(815) Plan is a participating non-linked plan which offers an attractive combination of protection and savings. This combination provides financial protection against death throughout the lifetime of the policyholder with the provision of payment of lump sum at the end of the selected policy term in case of his or her survival.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "15 to 35 years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "18 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "50 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "\n" +
                "\n" +
                "Policy Benefits :\n" +
                "\n" +
                "\n" +
                "On Death :\n" +
                "Provided all due premiums have been paid, the following death benefit shall be paid:\n" +
                "• On Death during the policy term: Death benefit, defined as sum of Sum Assured on Deathand vested Simple Revisionary Bonuses and Final Additional bonus, if any, shall be payable. Where, Sum Assured on Death is defined as higher of 125% of Basic Sum Assured or 10 times of annualised premium. This death benefit shall not be less than 105% of all the premiums paid as on date of death.The premiums mentioned above exclude service tax, extra premium and rider premiums, if any.\n" +
                "• On death of policyholder at any time after policy term: Basic Sum Assured\n" +
                "\n" +
                "On Survival :\n" +
                "Basic Sum Assured, along with vested Simple Revisionary Bonuses and Final Additional Bonus, if any, shall be payable in lump sum on survival to the end of the policy term provided all due premiums have been paid.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered for cash provided at least three full years premiums have been paid.The Guaranteed Surrender value during policy term shall be a percentage of total premiums paid (net of service tax) excluding extra premiums and premiums for riders, if opted for. This percentage will depend on the policy term and policy year in which the policy is surrendered.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "Loan can be availed under the policy provided the policy has acquired a surrender value and subject to the terms and conditions as the company may specify from time to time.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).\n" +
                "\n" +
                "Proposal Form : 300 shall be used under this plan.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_817(View view)
    {
        String head=b3.getText().toString();
        String body="Plan :Single Premium Endowment (817)\n" +
                "\n" +
                "Product Summary :\n" +
                "Single Premium Endowment Plan (817) is a single premium, non-linked, with profits Endowment Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Term :\n" +
                "10 to 25 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "90days Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "65 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "50,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On Death after commencement of risk: Sum Assured + Vested Bonus + FAB if any\n" +
                "On Death before commencement of risk: Return of Single Premium excluding taxes and Extra Premium.\n" +
                "\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term subject to realization of the premium cheque.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after completion of one policy year.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• u/s 80C up to 10% of SA.\n" +
                "\n" +
                "Proposal Form : 300/340 shall be used under this plan.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_827(View view)
    {
        String head=b4.getText().toString();
        String body="Plan :Jeevan Rakshak (827)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is a regular premium paying Non-linked, With-Profits, Endowment Assurance plan. This plan shall be available to standard lives only without any medical examination an dthe total Sum Assured under all the policies issued to an Individual under this plan shall not exceed Rs. 2 lacs.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "10 to 20 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "8 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "70 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "75,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "2,00,000\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death of the Life Assured during the policy term  Sum Assured on Death  shall be payable, which is the highest of\n" +
                "• Basic Sum Assured; or\n" +
                "• 10 times of annualized premium; or\n" +
                "• 105% of all the premiums paid as on date of death.\n" +
                "The premium mentioned above excludes taxes, extra premium and rider premiums, if any. In addition to the above, Loyalty Addition, if any, shall also be payable if death occurs after completion of 5th policy year.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival to the end of the policy term Basic Sum Assured along with Loyalty Addition, if any,shall be payable.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term provided at least three full years premiums have been paid.\n" +
                "\n" +
                "Guaranteed Surrender Value:\n" +
                "The Guaranteed Surrender Value shall be a percentage of total premiums paid (net of taxes) excluding any extra premiums and premiums for riders, if opted for. This percentage will depend on the policy term and policy year in which the policy is surrendered.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan,after payment of premiums for at least 3 full years subject to following conditions :\n" +
                "a. The maximum loan as a percentage of surrender value shall be 70percent in case of inforce policies and 60percent in case of paid-up policies.\n" +
                "b. The rate of interest to be charged for the loan amount would be determined from time to time by the Corporation.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_830(View view)
    {
        String head=b5.getText().toString();
        String body="Plan :Limited Premium Endowment (830)\n" +
                "\n" +
                "Product Summary :\n" +
                "Limited Premium Endowment Plan (830) is a limited premium paying conventional With-Profits Endowment Assurance Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "12 Year\n" +
                "16 Year\n" +
                "21 Year\n" +
                "\n" +
                "PPT :\n" +
                "8 Year\n" +
                "9 Year\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "18 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "62 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "3,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "125%of Basic Sum-Assured,OR 10 times of Annualized Premium, OR 105%of all Premiums paid as on death, WHICHEVER IS HIGHER.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Basic Sum-Assured + Revisionary Bonus+ Final Additional Bonus.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term provided at least two full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after payment of premiums for at least 2 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_833(View view)
    {
        String head=b6.getText().toString();
        String body="Plan :Jeevan Lakshya (833)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is a limited premium paying term conventional With-Profits Endowment Assurance plan where premium paying term is less than policy term by three years.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "13 to 25 Years\n" +
                "\n" +
                "PPT :\n" +
                "(Policy Term - 3) Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "18Years Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "50Years (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "65 Year (Nearest Birthday)\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 65.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Benefits payable on death:\n" +
                "Sum Assured on Death + Bonuses and Final Additional Bonus, if any, shall be payable in following manner.\n" +
                "Annual Income Benefit equal to 10% of the Basic Sum Assured (till policy anniversary prior to date of maturity).\n" +
                "Assured Absolute Amount of 110% of Basic Sum Assured, payable (on due date of maturity).\n" +
                "Along with Bonuses and Final Additional Bonus, if any, on maturity. (on due date of maturity).\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Basic Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term provided atleast 3 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "Available after payment of premium of 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_836(View view)
    {
        String head=b7.getText().toString();
        String body="Plan :Jeevan Labh (836)\n" +
                "\n" +
                "Product Summary :\n" +
                "Jeevan Labh Plan (836) is a limited premium paying, non-linked, with-profits Endowment Assurance plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "16 Year\n" +
                "21 Year\n" +
                "25 Year\n" +
                "\n" +
                "PPT :\n" +
                "For Term 16 Year Ppt 10 year\n" +
                "For Term 21 Year Ppt 15 Year\n" +
                "For Term 25 Year ppt 16 year\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "8 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "59 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "2,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Basic Sum-Assured, OR 10 times of Annualized Premium, OR 105%of all Premiums paid as on death, WHICHEVER IS HIGHER.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Basic Sum-Assured + Reversionary Bonus+ Final Additional Bonus.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term provided at least three full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after payment of premiums for at least 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_838(View view)
    {
        String head=b8.getText().toString();
        String body="Plan :Jeevan Pragati (838)\n" +
                "\n" +
                "Product Summary :\n" +
                "Jeevan Pragati(838) is a non-linked, with profits Endowment Assurance Plan wherein the risks cover automatically increases after every five years during the term of the policy.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "12 to 20 years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "12 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "45 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "65 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,50,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 65.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Sum Assured + Vested Bonus + FAB if any.\n" +
                "Where S.A. on Death is defined as the higher of\n" +
                "i. 10 times of Annualized Premium, OR\n" +
                "ii. Absolute amount assured to be paid on death, which is as under:\n" +
                "During first five policy years: 100% of the Basic S.A.\n" +
                "During 6th to 10th policy years: 125% of the Basic S.A.\n" +
                "During 11th to 15th policy years: 150% of the Basic S.A.\n" +
                "During 16th to 20th policy years: 200% of the Basic S.A.\n" +
                "This Death Benefit shall not be less than 105% of all Premiums paid as on death.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Basic Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term provided at least 3 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after payment of premiums for at least 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).\n" +
                "\n" +
                "Proposal Form : 300/340/360 shall be used under this plan.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_843(View view)
    {
        String head=b9.getText().toString();
        String body="Plan :Aadhaar Stambh (843)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is a regular premium paying Non-linked, With-Profits, Endowment Assurance plan. This Plan is exclusively designed for MALE LIVES having Aadhaar Card issued by UIDAI. This plan shall be available to standard lives only without any medical examination andthe total Sum Assured under all the policies issued to an Individual under this plan shall not exceed Rs. 3 lacs.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "10 to 20 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "8 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "70 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "75,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "3,00,000\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death of the Life Assured during the policy term  Sum Assured on Death  shall be payable, which is the highest of\n" +
                "• Basic Sum Assured; or\n" +
                "• 10 times of annualized premium; or\n" +
                "• 105% of all the premiums paid as on date of death.\n" +
                "The premium mentioned above excludes taxes, extra premium and rider premiums, if any.In addition to the above, Loyalty Addition, if any, shall also be payable if death occurs after completion of 5th policy year.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival to the end of the policy term Basic Sum Assured along with Loyalty Addition, if any,shall be payable.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term provided atleast three full years premiums have been paid.\n" +
                "\n" +
                "Guaranteed Surrender Value:\n" +
                "The Guaranteed Surrender Value shall be a percentage of total premiums paid (net of taxes) excluding any extra premiums and premiums for riders, if opted for. This percentage will depend on the policy term and policy year in which the policy is surrendered.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan,after payment of premiums for at least 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_844(View view)
    {
        String head=b10.getText().toString();
        String body="Plan :Aadhaar Shila (844)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is a regular premium paying Non-linked, With-Profits, Endowment Assurance plan.This Plan is exclusively designed for FEMALE LIVES having Aadhaar Card issued by UIDAI. This plan shall be available to standard lives only without any medical examination andthe total Sum Assured under all the policies issued to an Individual under this plan shall not exceed Rs. 3 lacs.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "10 to 20 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "8 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "70 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "75,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "3,00,000\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death of the Life Assured during the policy term  Sum Assured on Death  shall be payable, which is the highest of\n" +
                "• 110% of Basic Sum Assured; or\n" +
                "• 10 times of annualized premium; or\n" +
                "• 105% of all the premiums paid as on date of death.\n" +
                "The premium mentioned above excludes taxes, extra premium and rider premiums, if any.In addition to the above, Loyalty Addition, if any, shall also be payable if death occurs after completion of 5th policy year.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival to the end of the policy term Basic Sum Assured along with Loyalty Addition, if any,shall be payable.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term provided atleast three full years premiums have been paid.\n" +
                "\n" +
                "Guaranteed Surrender Value:\n" +
                "The Guaranteed Surrender Value shall be a percentage of total premiums paid (net of taxes) excluding any extra premiums and premiums for riders, if opted for. This percentage will depend on the policy term and policy year in which the policy is surrendered.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan,after payment of premiums for at least 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_845(View view)
    {
        String head=b11.getText().toString();
        String body="Plan :Jeevan Umang (845)\n" +
                "\n" +
                "Product Summary :\n" +
                "Jeevan Umang Plan (845) is a non-linked, with-profits whole life assurance plan. This plan provides for annual survival benefits from the end of the premium paying term till maturity and lump sum payment at the time of maturity or on death of the policyholder during the policy term.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "[100 - age entry] Year\n" +
                "\n" +
                "PPT :\n" +
                "15 year\n" +
                "20 year\n" +
                "25 year\n" +
                "30 year\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "[90]days (completed)\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 years (Nearest Birthday) for PPT = 15\n" +
                "50 years (Nearest Birthday) for PPT = 20\n" +
                "45 years (Nearest Birthday) for PPT = 25\n" +
                "40 years (Nearest Birthday) for PPT = 30\n" +
                "\n" +
                "Minimum age at the end of the PPT :\n" +
                "[30]years(Nearest Birthday)\n" +
                "\n" +
                "Maximum age at the end of the PPT :\n" +
                "[70]years(Nearest Birthday)\n" +
                "\n" +
                "Age at Maturity :\n" +
                "[100]years(Nearest Birthday)\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "2,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "\n" +
                "\n" +
                "Maximum Accidental Benefit Rider shall be available during the ppt only.\n" +
                "\n" +
                "\n" +
                "Policy Benefits :\n" +
                "\n" +
                "\n" +
                "On Death :\n" +
                "On death before the commencement of Risk:\n" +
                "An amount equal to the total amount of premium/s paid without interest shall be payable.\n" +
                "On death after commencement of Risk:\n" +
                "Sum Assured on Death+vested simple reversionary Bonus + FAB if any.\n" +
                "Where Sum Assured on Death is defined as the highest of\n" +
                "Basic Sum-Assured,OR\n" +
                "10 times of Annualized Premium, OR\n" +
                "105%of all Premiums paid as on death\n" +
                "\n" +
                "On Survival :\n" +
                "On survival 8% of Basic Sum Assured shall be payable each year.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_820(View view)
    {
        String head=b12.getText().toString();
        String body="Plan :20 Years Money Back (820)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is a limited premium payment, non-linked, with profits Money Back Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "20 Year\n" +
                "\n" +
                "PPT :\n" +
                "15 Year\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "13year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "50year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "70 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Sum Assured on Death + Vested Bonus + FAB if any.\n" +
                "Sum Assured on Death = Higher of 125% of Basic SA or 10 times of annualized Premium.\n" +
                "Death Benefit shall not be less than 105% of total premiums paid as on date of death.\n" +
                "The premiums exclude taxes, extra premium and rider premiums.\n" +
                "\n" +
                "On Survival :\n" +
                "20% of Basic SA is payable after 5th, 10th and 15th year of policy.\n" +
                "Maturity Time 40% of Basic Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered for cash provided atleast three full years premiums have been paid. The Guaranteed Surrender value during policy term shall be a percentage of total premiums paid (net of service tax)excluding extra premiums and premiums for riders, if opted for. This percentage will depend on the policy term and policy year in which the policy is surrendered.\n" +
                "\n" +
                "Loan :\n" +
                "Available after payment of premium of 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_816(View view)
    {
        String head=b13.getText().toString();
        String body="Plan :Bima Bachat (816)\n" +
                "\n" +
                "Product Summary :\n" +
                "Bima Bachat (816) Plan is a single premium, non-linked, with profits Money Back type Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Term :\n" +
                "9 Year\n" +
                "12 Year\n" +
                "15 Year\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "15 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "Term 9yr then 66yr (Nearest Birthday)\n" +
                "Term 12yr then 63yr (Nearest Birthday)\n" +
                "Term 15yr then 60yr (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "Term 9yr then 35,000\n" +
                "Term 12yr then 50,000\n" +
                "Term 15yr then 70,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "During 1st five years policy years : Sum Assured only.\n" +
                "After completion of five policy years : Sum Assured + Loyalty Addition, if any.\n" +
                "\n" +
                "On Survival :\n" +
                "For Policy Term of 9 years : 15% of SA, after 3rd and 6th policy year.\n" +
                "For Policy Term of 12 years : 15% of SA, after 3rd ,6th and 9th policy year.\n" +
                "For Policy Term of 15 years : 15% of SA, after 3rd ,6th,9th and 12th policy year.\n" +
                "\n" +
                "At Maturity Time :\n" +
                "Single Premium Paid + Loyalty Additions, if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term subject to realization of the premium cheque.\n" +
                "\n" +
                "Guaranteed Surrender Value :\n" +
                "First year: 70% of the Single Premium excluding taxes and extra premium,if any.\n" +
                "Thereafter: 90%of the Single Premium excluding taxes, extra premium, if any and all survival benefits paid earlier.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan at any time after completion of one policy year.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_821(View view)
    {
        String head=b14.getText().toString();
        String body="Plan :25 Years Money Back (821)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is a limited premium payment, non-linked, with profits Money Back Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "25 Year\n" +
                "\n" +
                "PPT :\n" +
                "20 Year\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "13year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "45 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "70 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Sum Assured on Death + Vested Bonus + FAB if any.\n" +
                "Sum Assured on Death = Higher of 125% of Basic SA or 10 times of annualized Premium.\n" +
                "Death Benefit shall not be less than 105% of total premiums paid as on date of death.\n" +
                "The premiums exclude taxes, extra premium and rider premiums.\n" +
                "\n" +
                "On Survival :\n" +
                "15% of Basic SA is payable after 5th, 10th, 15th and 20th year of policy.\n" +
                "Maturity Time 40% of Basic Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered for cash provided atleast three full years premiums have been paid. The Guaranteed Surrender value during policy term shall be a percentage of total premiums paid (net of service tax)excluding extra premiums and premiums for riders, if opted for. This percentage will depend on the policy term and policy year in which the policy is surrendered.\n" +
                "\n" +
                "Loan :\n" +
                "Available after payment of premium of 3 full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_832(View view)
    {
        String head=b15.getText().toString();
        String body="Plan :Child Money Back (832)\n" +
                "\n" +
                "Product Summary :\n" +
                "New Childrens Money Back Plan is a non-linked, with-profits, regular premium payment money back plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "25 Age at Maturity Time\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "0 Year Last Birthday\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "12 Year Last Birthday\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death Before the Date of Commencement of Risk:\n" +
                "An amount equal to the total amount of premiums paid excluding taxes, extra premium and rider premium, if any shall be payable.\n" +
                "\n" +
                "On death After the Date of Commencement of Risk:\n" +
                "Death Benefit, defined as sum of Sum Assured on Death and vested Simple Revisionary Bonuses and Final Additional Bonus, if any, shall be payable. Where Sum Assured on Death is defined as higher of 10 times of annualized premium or Absolute amount assured to be paid on death i.e. Basic Sum assured. This death benefit shall not be less than 105% of the total premiums paid as on date of death.\n" +
                "\n" +
                "On Survival :\n" +
                "If Policy in full force :\n" +
                "Completion Age 18YRS - 20% OF MSA\n" +
                "Completion Age 20YRS - 20% OF MSA\n" +
                "Completion Age 22YRS - 20% OF MSA\n" +
                "On Maturity at Age 25YRS - 40% of MSA + Vested Bonus + FAB\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term provided premiums have been paid for full three years.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan after the payment of premiums for at least three full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_834(View view)
    {
        String head=b16.getText().toString();
        String body="Plan :Jeevan Tarun (834)\n" +
                "\n" +
                "Product Summary :\n" +
                "Jeevan Tarun Plan is non-linked, with-profits, Limited premium payment plan specially designed to meet the educational and other needs of growing children.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "25 Age at Maturity Time\n" +
                "[25-Age at entry]Years\n" +
                "\n" +
                "PPT :\n" +
                "[20-Age at entry]Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "0 Year Last Birthday\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "12 Year Last Birthday\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "75,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death Before the Date of Commencement of Risk:\n" +
                "An amount equal to the total amount of premiums paid excluding taxes, extra premium and rider premium, if any shall be payable.\n" +
                "\n" +
                "On death After the Date of Commencement of Risk:\n" +
                "Death Benefit, defined as sum of Sum Assured on Death and vested Simple Revisionary Bonuses and Final Additional Bonus, if any, shall be payable.\n" +
                "Where Sum Assured on Death is defined as higher of 10 times of annualized premium or Absolute amount assured to be paid on death i.e. 125% of Sum Assured\n" +
                "This death benefit shall not be less than 105% of the total premiums paid as on date of death.\n" +
                "\n" +
                "On Survival :\n" +
                "Option is chosen at proposal stage.\n" +
                "Option-1: No Survival,Maturity Benefit 100% S.A.\n" +
                "Option-2: 5% S.A. every year For 5 Years from age 20 to 24,Maturity Benefit 75% S.A.\n" +
                "Option-3: 10% S.A. every year For 5 Years from age 20 to 24,Maturity Benefit 50% S.A.\n" +
                "Option-4: 15% S.A. every year For 5 Years from age 20 to 24,Maturity Benefit 25% S.A.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term provided premiums have been paid for full three years.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan after the payment of premiums for at least three full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_847(View view)
    {
        String head=b17.getText().toString();
        String body="Plan :Jeevan Shiromani (847)\n" +
                "\n" +
                "Product Summary :\n" +
                "Jeevan Shiromani plan is a non-linked, with-profits, limited premium payment money back life insurance plan especially designed for targeted segment of High Net-worth Individuals.\n" +
                "\n" +
                "Premium Payment Mode :\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term/Ppt :\n" +
                "14/10, 16/12, 18/14 and 20/16 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "18 Years completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 Years (Nearer Birthday) for Term 14\n" +
                "51 Years (Nearer Birthday) for Term 16\n" +
                "48 Years (Nearer Birthday) for Term 18\n" +
                "45 Years (Nearer Birthday) for Term 20\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "69 Years (Nearer Birthday) for term 14\n" +
                "67 Years (Nearer Birthday) for term 16\n" +
                "66 Years (Nearer Birthday) for term 18\n" +
                "65 Years (Nearer Birthday) for term 20\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "Rs 1 crore (Multiple of 5 lakhs thereafter)\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "No Limit\n" +
                "\n" +
                "Guaranteed Addition :\n" +
                "Rs 50/- per 1000 SA for 1st 5 years\n" +
                "Rs 55/- per 1000 SA for remaining PPT\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Death during 5 yrs : SA on Death + GA\n" +
                "Death after 5 yrs : SA on Death + GA + LA\n" +
                "SA on Death : 125% of BSA or 10 times AP or 105% of Premiums Paid\n" +
                "\n" +
                "Survival Benefits :\n" +
                "For 14 yrs policy : 30% of BSA in 10th and 12th year\n" +
                "For 16 yrs policy : 35% in 12th and 14th year\n" +
                "For 18 yrs policy : 40% in 14th and 16th year\n" +
                "For 20 yrs policy : 45% in 16th and 18th year\n" +
                "Maturity time : Remaining SA with GA + LA\n" +
                "\n" +
                "Inbuilt Critical Illness Benefit:\n" +
                "10% of BSA on diagnosis of 15 Critical diseases + Premium is deferred for 2 Years w/o interest.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term provided atleast 3 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after payment of premiums for at least 1 full years.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_848(View view)
    {
        String head=b18.getText().toString();
        String body="Plan :Bima Shree (848)\n" +
                "\n" +
                "Product Summary :\n" +
                "Bima Shree plan is a non-linked, with-profits, limited premium payment money back life insurance plan with minimum Basic Sum Assured of Rs. 10 lakh especially designed for targeted segment of High Net-worth Individuals.\n" +
                "\n" +
                "Premium Payment Mode :\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term/Ppt :\n" +
                "14/10, 16/12, 18/14 and 20/16 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "8 Years completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 Years (Nearer Birthday) for Term 14\n" +
                "51 Years (Nearer Birthday) for Term 16\n" +
                "48 Years (Nearer Birthday) for Term 18\n" +
                "45 Years (Nearer Birthday) for Term 20\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "69 Years (Nearer Birthday) for term 14\n" +
                "67 Years (Nearer Birthday) for term 16\n" +
                "66 Years (Nearer Birthday) for term 18\n" +
                "65 Years (Nearer Birthday) for term 20\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "Rs 10 lakh (Multiple of 1 lakhs thereafter)\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "No Limit\n" +
                "\n" +
                "Guaranteed Addition :\n" +
                "Rs 50/- per 1000 SA for 1st 5 years\n" +
                "Rs 55/- per 1000 SA for remaining PPT\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Death during 5 yrs : SA on Death + GA\n" +
                "Death after 5 yrs : SA on Death + GA + LA\n" +
                "SA on Death : 125% of BSA or 10 times AP or 105% of Premiums Paid\n" +
                "\n" +
                "Survival Benefits :\n" +
                "For 14 yrs policy : 30% of BSA in 10th and 12th year\n" +
                "For 16 yrs policy : 35% in 12th and 14th year\n" +
                "For 18 yrs policy : 40% in 14th and 16th year\n" +
                "For 20 yrs policy : 45% in 16th and 18th year\n" +
                "\n" +
                "New Critical Illness Benefit Rider available.\n" +
                "Premium Waiver Benefit Rider available.\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term provided at least 2 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after payment of premiums for at least 2 full years.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_817_sp(View view)
    {
        String head=b19.getText().toString();
        String body="Plan :Single Premium Endowment (817)\n" +
                "\n" +
                "Product Summary :\n" +
                "Single Premium Endowment Plan (817) is a single premium, non-linked, with profits Endowment Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Term :\n" +
                "10 to 25 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "90days Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "65 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "50,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On Death after commencement of risk: Sum Assured + Vested Bonus + FAB if any\n" +
                "On Death before commencement of risk: Return of Single Premium excluding taxes and Extra Premium.\n" +
                "\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term subject to realization of the premium cheque.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after completion of one policy year.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• u/s 80C up to 10% of SA.\n" +
                "\n" +
                "Proposal Form : 300/340 shall be used under this plan.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_816_sp(View view)
    {
        String head=b20.getText().toString();
        String body="Plan :Bima Bachat (816)\n" +
                "\n" +
                "Product Summary :\n" +
                "Bima Bachat (816) Plan is a single premium, non-linked, with profits Money Back type Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Term :\n" +
                "9 Year\n" +
                "12 Year\n" +
                "15 Year\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "15 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "Term 9yr then 66yr (Nearest Birthday)\n" +
                "Term 12yr then 63yr (Nearest Birthday)\n" +
                "Term 15yr then 60yr (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "Term 9yr then 35,000\n" +
                "Term 12yr then 50,000\n" +
                "Term 15yr then 70,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "During 1st five years policy years : Sum Assured only.\n" +
                "After completion of five policy years : Sum Assured + Loyalty Addition, if any.\n" +
                "\n" +
                "On Survival :\n" +
                "For Policy Term of 9 years : 15% of SA, after 3rd and 6th policy year.\n" +
                "For Policy Term of 12 years : 15% of SA, after 3rd ,6th and 9th policy year.\n" +
                "For Policy Term of 15 years : 15% of SA, after 3rd ,6th,9th and 12th policy year.\n" +
                "\n" +
                "At Maturity Time :\n" +
                "Single Premium Paid + Loyalty Additions, if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term subject to realization of the premium cheque.\n" +
                "\n" +
                "Guaranteed Surrender Value :\n" +
                "First year: 70% of the Single Premium excluding taxes and extra premium,if any.\n" +
                "Thereafter: 90%of the Single Premium excluding taxes, extra premium, if any and all survival benefits paid earlier.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan at any time after completion of one policy year.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_818(View view)
    {
        String head=b21.getText().toString();
        String body="Plan :Jeevan Nidhi Single Premium (818)\n" +
                "\n" +
                "Product Summary :\n" +
                "New Jeevan Nidhi(818) Plan is a conventional with profits pension plan which provides for death cover during the deferment period and offers annuity on survival to the date of vesting.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Term :\n" +
                "5 to 35 years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "20 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "60 Year (Nearest Birthday)\n" +
                "\n" +
                "Minimum Vesting Age :\n" +
                "55 Year\n" +
                "\n" +
                "Maximum Vesting Age :\n" +
                "65 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,50,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "• Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Death during first five policy year :\n" +
                "Sum Assured + Guaranteed Addition\n" +
                "\n" +
                "Death after first five policy year :\n" +
                "Sum Assured + Guranteed Addition + Vested Bonus + FAB if any.\n" +
                "\n" +
                "On Vesting :\n" +
                "On Vesting Basic Sum Assured + Guaranteed Addition + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Option On Vesting :\n" +
                "1. Get 1/3rd amount as commutation and Buy Jeevan Akshay policy of Balance amount increased by 3%.\n" +
                "2. Buy Jeevan Akshay of Full vesting amount increased by 3%.\n" +
                "3. Buy Jeevan Nidhi Single Premium.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "Single Premium : The Policy can be surrendered at any time during the deferment Period(term).\n" +
                "\n" +
                "Regular Premium :\n" +
                "Term less than 10 : After atleast 2 full years premiums have been paid.\n" +
                "Term 10 or More : After atleast 3 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "No loan facility will be available under this plan.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• On Premiums : u/s 80C\n" +
                "• Commutation Tax free : u/s 10(10A)iii\n" +
                "• Death claim Tax free : u/s 10(10D)\n" +
                "• Pension : Taxable.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_822(View view)
    {
        String head=b22.getText().toString();
        String body="Plan :Anmol Jeevan (822)\n" +
                "\n" +
                "Product Summary :\n" +
                "Anmool Jeevan 2 plan number 822 is a regular premium paying conventional without profit pure protection plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly\n" +
                "\n" +
                "Term :\n" +
                "5 to 25 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "18 Years (Completed)\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "55 Years (Nearest Birthday)\n" +
                "\n" +
                "Maximum Cover Ceasing Age :\n" +
                "65 Years (Nearest Birthday)\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "6,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "24,00,000\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death of the Life Assured during the policy term Sum Assured shall be payable.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival to the end of the policy term,no benefits shall be payable.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "No surrender value will be available under this plan.\n" +
                "\n" +
                "Loan :\n" +
                "No loan will be granted under this plan.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_823(View view)
    {
        String head=b23.getText().toString();
        String body="Plan :Amulya Jeevan (823)\n" +
                "\n" +
                "Product Summary :\n" +
                "Amulya Jeevan 2 plan number 823 is a regular premium paying conventional without profit pure protection plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly\n" +
                "\n" +
                "Term :\n" +
                "5 to 35 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "18 Years (Completed)\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "60 Years (Nearest Birthday)\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "25,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death of the Life Assured during the policy term Sum Assured shall be payable.\n" +
                "\n" +
                "On Survival :\n" +
                "On survival to the end of the policy term,no benefits shall be payable.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "No surrender value will be available under this plan.\n" +
                "\n" +
                "Loan :\n" +
                "No loan will be granted under this plan.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_818_pen(View view)
    {
        String head=b24.getText().toString();
        String body="Plan :Jeevan Nidhi (818)\n" +
                "\n" +
                "Product Summary :\n" +
                "New Jeevan Nidhi(818) Plan is a conventional with profits pension plan which provides for death cover during the deferment period and offers annuity on survival to the date of vesting.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "7 to 35 years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "20 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "58 Year (Nearest Birthday)\n" +
                "\n" +
                "Minimum Vesting Age :\n" +
                "55 Year\n" +
                "\n" +
                "Maximum Vesting Age :\n" +
                "65 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "• Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Death during first five policy year :\n" +
                "Sum Assured + Guaranteed Addition\n" +
                "\n" +
                "Death after first five policy year :\n" +
                "Sum Assured + Guranteed Addition + Vested Bonus + FAB if any.\n" +
                "\n" +
                "On Vesting :\n" +
                "On Vesting Basic Sum Assured + Guaranteed Addition + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Option On Vesting :\n" +
                "1. Get 1/3rd amount as commutation and Buy Jeevan Akshay policy of Balance amount increased by 3%.\n" +
                "2. Buy Jeevan Akshay of Full vesting amount increased by 3%.\n" +
                "3. Buy Jeevan Nidhi Single Premium.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "Single Premium : The Policy can be surrendered at any time during the deferment Period(term).\n" +
                "\n" +
                "Regular Premium :\n" +
                "Term less than 10 : After atleast 2 full years premiums have been paid.\n" +
                "Term 10 or More : After atleast 3 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "No loan facility will be available under this plan.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• On Premiums : u/s 80C\n" +
                "• Commutation Tax free : u/s 10(10A)iii\n" +
                "• Death claim Tax free : u/s 10(10D)\n" +
                "• Pension : Taxable.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_189(View view)
    {
        String head=b25.getText().toString();
        String body="Plan :Jeevan Akshay VI (189)\n" +
                "\n" +
                "Product Summary :\n" +
                "Jeevan Akshay VI (189) is an immediate annuity plan that can be bought by paying a lump sum as Single Premium. Pension will start immediately after buying the policy.Various options are available for the type and mode of payment of annuities. But once chosen, it can not be changed.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Annuity Mode:\n" +
                "• Annuity may be paid either at monthly, quarterly, half yearly or yearly intervals. You may opt any mode of payment of Annuity\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "30 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "• 100 Year Last Birthday for option [F] Annuity for life with return of purchase price on death\n" +
                "• 85 Year Last Birthday For all anuity option other than option [F]\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "• Rs.1,00,000/- for all distribution channels except online.\n" +
                "• Rs.1,50,000/- for on line sale.\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT\n" +
                "\n" +
                "Annuity Option :\n" +
                "i) Annuity for life\n" +
                "ii) Annuity guaranteed for 5, 10, 15 or 20 years and for life thereafter.\n" +
                "iii) Annuity for life with return of purchase price on death\n" +
                "iv) Annuity for life increasing at a simple rate of 3% p.a.\n" +
                "v) Annuity for life with a provision for 50% of the annuity to the spouse of the annuitant for life on death of the annuitant.\n" +
                "Annuity for life with a provision for 100% of the annuity to the spouse of the annuitant for life on death of the annuitant.\n" +
                "Annuity for life with a provision of 100% of the annuity payable to spouse during his/her life time on death of annuitant with return of purchase price on the death of last survivor.\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "(a) Under option (i) - payment of annuity ceases.\n" +
                "Under option (ii) - i. On death during the guarantee period - annuity is paid to the nominee till the end of the guaranteed period after which the same ceases. ii. On death after the guarantee period - payment of annuity ceases.\n" +
                "Under option (iii) - payment of annuity ceases and the purchase price is returned to the nominee.\n" +
                "Under option (iv) - payment of annuity ceases.\n" +
                "Under option (v) - payment of annuity ceases and 50% of the annuity is paid to the surviving named spouse during his/her life time. If the spouse predeceases the annuitant, nothing is payable after the death of the annuitant.\n" +
                "Under option (vi) - payment of annuity ceases and 100% of the annuity is paid to the surviving named spouse during his/her life time. If the spouse predeceases the annuitant, nothing is payable after the death of the annuitant.\n" +
                "Under option (vii) - payment of annuity ceases. 100% of the annuity is paid to the surviving named spouse during his/her life time and purchase price is returned to the nominee after the death of the spouse. If the spouse predeceases the annuitant, the annuity ceases and purchase price is paid to the nominee. The amount of annuity shall be assured throughout the period for which it is payable.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "Jeevan Akshay VI (189) is an immediate annuity plan that can be bought by paying a lump sum as Single Premium. Pension will start immediately after buying the policy.Various options are available for the type and mode of payment of annuities. But once chosen, it can not be changed.\n" +
                "\n" +
                "Loan :\n" +
                "No loan will be available under the policy.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Pension that is received is taxable.\n" +
                "\n" +
                "Proposal Form 440 (IA) shall be used under this plan.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_818_pen2(View view)
    {
        String head=b26.getText().toString();
        String body="Plan :Jeevan Nidhi Single Premium (818)\n" +
                "\n" +
                "Product Summary :\n" +
                "New Jeevan Nidhi(818) Plan is a conventional with profits pension plan which provides for death cover during the deferment period and offers annuity on survival to the date of vesting.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Term :\n" +
                "5 to 35 years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "20 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "60 Year (Nearest Birthday)\n" +
                "\n" +
                "Minimum Vesting Age :\n" +
                "55 Year\n" +
                "\n" +
                "Maximum Vesting Age :\n" +
                "65 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,50,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "• Maximum Accidental Death and Disability Benefit Rider up to age 70.\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "Death during first five policy year :\n" +
                "Sum Assured + Guaranteed Addition\n" +
                "\n" +
                "Death after first five policy year :\n" +
                "Sum Assured + Guranteed Addition + Vested Bonus + FAB if any.\n" +
                "\n" +
                "On Vesting :\n" +
                "On Vesting Basic Sum Assured + Guaranteed Addition + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Option On Vesting :\n" +
                "1. Get 1/3rd amount as commutation and Buy Jeevan Akshay policy of Balance amount increased by 3%.\n" +
                "2. Buy Jeevan Akshay of Full vesting amount increased by 3%.\n" +
                "3. Buy Jeevan Nidhi Single Premium.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "Single Premium : The Policy can be surrendered at any time during the deferment Period(term).\n" +
                "\n" +
                "Regular Premium :\n" +
                "Term less than 10 : After atleast 2 full years premiums have been paid.\n" +
                "Term 10 or More : After atleast 3 full years premiums have been paid.\n" +
                "\n" +
                "Loan :\n" +
                "No loan facility will be available under this plan.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• On Premiums : u/s 80C\n" +
                "• Commutation Tax free : u/s 10(10A)iii\n" +
                "• Death claim Tax free : u/s 10(10D)\n" +
                "• Pension : Taxable.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_842(View view)
    {
        String head=b27.getText().toString();
        String body="Plan :Pradhan Mantri Vaya Vandana Yojana (842)\n" +
                "\n" +
                "Product Summary :\n" +
                "Pradhan Mantri Vaya Vandana Yojana (Plan No. 842) is a Government subsidized Scheme which shall provide an assured return of 8% p.a.payable monthly (i.e. equivalent to 8.30% p.a.) on the pensioner surviving during the policy term of 10 years for citizens aged 60 years and above.\n" +
                "\n" +
                "Premium Payment Mode :\n" +
                "Single Premium\n" +
                "\n" +
                "Mode of Pension payment :\n" +
                "• The modes of pension payment are monthly, quarterly, half-yearly and yearly. The pension payment shall be through NEFT OR Aadhar Enabled Payment System only.\n" +
                "\n" +
                "Pension Rate :\n" +
                "• Yearly : 8.30\n" +
                "• Halfly : 8.13\n" +
                "• Quarterly : 8.05\n" +
                "• Monthly : 8.00\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "60 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "No Limit\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "• Yearly : 1,44,578\n" +
                "• Halfly : 1,47,601\n" +
                "• Quarterly : 1,49,068\n" +
                "• Monthly : 1,50,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "• Yearly : 14,45,783\n" +
                "• Halfly : 14,76,015\n" +
                "• Quarterly : 14,90,683\n" +
                "• Monthly : 15,00,000\n" +
                "\n" +
                "Min-Max Pension Limit :\n" +
                "• Minimum Pension:\n" +
                "Rs. 1,000/- per Month\n" +
                "Rs. 3,000/- per Quarter\n" +
                "Rs. 6,000/- per Half-year\n" +
                "Rs. 12,000/- per Year\n" +
                "\n" +
                "• Maximum Pension:\n" +
                "Rs. 10,000/- per Month\n" +
                "Rs. 30,000/- per Quarter\n" +
                "Rs. 60,000/- per Half-year\n" +
                "Rs. 1,20,000/- per Year\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death, the full purchase price will be refunded to nominee.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "Surrender would be allowed in special circumstances like critical / terminal illness of self or spouse. The Surrender Value payable in such cases shall be 98% of Purchase Price.\n" +
                "\n" +
                "Loan :\n" +
                "Loan (up to 75% of subscribed amount) can be availed after 3 years from the Date of Commencement.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_850(View view)
    {
        String head=b28.getText().toString();
        String body="Plan :Jeevan Shanti (850)\n" +
                "\n" +
                "Product Summary :\n" +
                "This Plan is a non-linked, non-participating, single premium annuity plan wherein the Policyholder has an option to choose an Immediate Annuity or Deferred Annuity. This plan shall be allowed to lives including third gender.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Annuity Mode:\n" +
                "• Annuity may be paid either at monthly, quarterly, half yearly or yearly intervals.\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "30 Year Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "• 100 years (last birthday) for Option F in Immediate Annuity\n" +
                "• 85 years (last birthday) except Option F in Immediate Annuity\n" +
                "• 79 years (last birthday) Deferred Annuity\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "• Rs.1,50,000/-\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT\n" +
                "\n" +
                "Annuity Option :\n" +
                "1. IMMEDICTE ANNUITY OR 2. DEFERRED ANNUITY\n" +
                "10 OPTIONS FOR IMMEDIATE ANNUITY\n" +
                "2 OPTION FOR DEFERRED ANNUITY : 1. SINGLE LIFE 2. JOINT LIFE\n" +
                "\n" +
                "DEFERMENT PERIOD :\n" +
                "1 year to 20 years\n" +
                "\n" +
                "CLOSE RELATIVES AS JOINT LIFE ANNUITANTS [ MEANS : GRAND PARENTS / PARENTS / CHILDREN / GRAND CHILDREN OR SPOUSE OR SIBLINGS ]\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time after three months from the completion of policy.Surrendered shall be allowed under the following annuity options only:\n" +
                "a. Immediate annuity-\n" +
                "i) Option F: Immediate Annuity for life with return of Purchase Price.\n" +
                "ii) Option J: Joint Life Immediate Annuity for life with a provision for 100% of the annuity payable as long as one of the Annuitant survives and return of Purchase Price on death of last survivor.\n" +
                "b. Deferred annuity-\n" +
                "i) Option 1: Deferred annuity for Single life\n" +
                "ii) Option 2: Deferred annuity for Joint life\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility shall be available after completion of 1 policy year. Policy loan shall be allowed under the following annuity options only:\n" +
                "a. Immediate annuity-\n" +
                "i) Option F: Immediate Annuity for life with return of Purchase Price.\n" +
                "ii) Option J: Joint Life Immediate Annuity for life with a provision for 100% of the annuity payable as long as one of the Annuitant survives and return of Purchase Price on death of last survivor.\n" +
                "b. Deferred annuity-\n" +
                "i) Option 1: Deferred annuity for Single life\n" +
                "ii) Option 2: Deferred annuity for Joint life";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_904(View view)
    {
        String head=b29.getText().toString();
        String body="Plan :Jeevan Arogya (904)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is non-linked health plan which provides fixed benefits for hospitalization and almost all types of surgical procedures irrespective of actual cost incurred and the benefit is in addition to any other health insurance cover that insured lives may have, subject to certain terms and conditions.\n" +
                "The Benefits offered under the plan are:\n" +
                "i) Hospital Cash Benefit (HCB)\n" +
                "ii) Major Surgical Benefit (MSB)\n" +
                "iii) Day Care Procedure Benefit (DCPB)iv) Other Surgical Benefit (OSB)\n" +
                "These are in addition to any other health insurance cover.\n" +
                "Two riders: Term Assurance and Accident Benefit Rider available for PI and Insured Spouse only.\n" +
                "The Principle Insured (PI) can take the policy covering himself/herself. The Spouse, Children, Parents and Parents-in-law can also be covered under the same policy.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "• For Prencipal Insure/Spouse: 18 Years\n" +
                "• For Child: 3 Month\n" +
                "• For Parents/Parents-In-Law: 18 Years\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "• For Prencipal Insure/Spouse: 65 Years\n" +
                "• For Child: 17 Years\n" +
                "• For Parents/Parents-In-Law: 75 Years\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "• Rs.1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "• Rs.4,00,000\n" +
                "\n" +
                "Basic S.A. shall be in multiple of Rs.1,00,000\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "No death benefits payable.\n" +
                "However, following action will take place.\n" +
                "i. On death of the Principal Insured (PI); Option for Spouse to take over policy.\n" +
                "ii. Insured Spouse had predeceased the Principal Insured: Option to take new policy.\n" +
                "iii. In the event of death of an Insured continue with change in premium.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "No surrender value will be available under the policy.\n" +
                "\n" +
                "Loan :\n" +
                "No loan will be available under the policy.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_905(View view)
    {
        String head=b30.getText().toString();
        String body="Plan :Cancer Cover (905)\n" +
                "\n" +
                "Product Summary :\n" +
                "This is non-linked, regular premium payment health insurance plan which provides fixed benefit in case life assured is diagnosed with any of the specified early and/or major stage cancer during the policy term, subject to certain terms and conditions.\n" +
                "The plan has two benefit options which have to be chosen by the proposer at the outset.\n" +
                "Option 1: Level Sum Insured :\n" +
                "The Basic Sum Assured remains same through out the term.\n" +
                "Option 2: Increasing Sum Insured :\n" +
                "10% increase in Sum assured for 1st 5 years or till diagnosis of specified cancer.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "• 20 Years (completed)\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "• 65 Years (last birthday)\n" +
                "\n" +
                "Minimum Policy Term :\n" +
                "10 years\n" +
                "\n" +
                "Maximum Policy Term :\n" +
                "30 years\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "• Rs.10,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "• Rs.50,00,000\n" +
                "\n" +
                "Basic S.A. shall be in multiple of Rs.1,00,000\n" +
                "Minimum and Maximum cover ceasing age :\n" +
                "50 years and 75 years\n" +
                "\n" +
                "Minimum Premium Rs.2400 p.a. for all modes.\n" +
                "Policy Benefits :\n" +
                "A. Early stage cancer :\n" +
                "Payable once for the 1st ever event\n" +
                "i. Lumpsum 25% of applicable Sum Assured payable and\n" +
                "ii. Next 3 years premiums waived.\n" +
                "\n" +
                "B. Major Stage Cancer :\n" +
                "i. Lumpsum 100% of applicable Sum Assured payable minus any claim paid for A above if any.\n" +
                "ii. 1% of applicable Sum Assured guaranted payable for next 120 months. AND\n" +
                "iii. Waiver of future premiums. Maximum claim payable 220% of applicable sum assured.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "No surrender value will be available under the policy.\n" +
                "\n" +
                "Loan :\n" +
                "No loan will be available under the policy.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_832_child(View view)
    {
        String head=b31.getText().toString();
        String body="Plan :Child Money Back (832)\n" +
                "\n" +
                "Product Summary :\n" +
                "New Childrens Money Back Plan is a non-linked, with-profits, regular premium payment money back plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "25 Age at Maturity Time\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "0 Year Last Birthday\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "12 Year Last Birthday\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "1,00,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death Before the Date of Commencement of Risk:\n" +
                "An amount equal to the total amount of premiums paid excluding taxes, extra premium and rider premium, if any shall be payable.\n" +
                "\n" +
                "On death After the Date of Commencement of Risk:\n" +
                "Death Benefit, defined as sum of Sum Assured on Death and vested Simple Revisionary Bonuses and Final Additional Bonus, if any, shall be payable. Where Sum Assured on Death is defined as higher of 10 times of annualized premium or Absolute amount assured to be paid on death i.e. Basic Sum assured. This death benefit shall not be less than 105% of the total premiums paid as on date of death.\n" +
                "\n" +
                "On Survival :\n" +
                "If Policy in full force :\n" +
                "Completion Age 18YRS - 20% OF MSA\n" +
                "Completion Age 20YRS - 20% OF MSA\n" +
                "Completion Age 22YRS - 20% OF MSA\n" +
                "On Maturity at Age 25YRS - 40% of MSA + Vested Bonus + FAB\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term provided premiums have been paid for full three years.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan after the payment of premiums for at least three full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_834_child(View view)
    {
        String head=b32.getText().toString();
        String body="Plan :Jeevan Tarun (834)\n" +
                "\n" +
                "Product Summary :\n" +
                "Jeevan Tarun Plan is non-linked, with-profits, Limited premium payment plan specially designed to meet the educational and other needs of growing children.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Yearly, Halfly, Quarterly, Monthly(ECS)\n" +
                "\n" +
                "Term :\n" +
                "25 Age at Maturity Time\n" +
                "[25-Age at entry]Years\n" +
                "\n" +
                "PPT :\n" +
                "[20-Age at entry]Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "0 Year Last Birthday\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "12 Year Last Birthday\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "75,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On death Before the Date of Commencement of Risk:\n" +
                "An amount equal to the total amount of premiums paid excluding taxes, extra premium and rider premium, if any shall be payable.\n" +
                "\n" +
                "On death After the Date of Commencement of Risk:\n" +
                "Death Benefit, defined as sum of Sum Assured on Death and vested Simple Revisionary Bonuses and Final Additional Bonus, if any, shall be payable.\n" +
                "Where Sum Assured on Death is defined as higher of 10 times of annualized premium or Absolute amount assured to be paid on death i.e. 125% of Sum Assured\n" +
                "This death benefit shall not be less than 105% of the total premiums paid as on date of death.\n" +
                "\n" +
                "On Survival :\n" +
                "Option is chosen at proposal stage.\n" +
                "Option-1: No Survival,Maturity Benefit 100% S.A.\n" +
                "Option-2: 5% S.A. every year For 5 Years from age 20 to 24,Maturity Benefit 75% S.A.\n" +
                "Option-3: 10% S.A. every year For 5 Years from age 20 to 24,Maturity Benefit 50% S.A.\n" +
                "Option-4: 15% S.A. every year For 5 Years from age 20 to 24,Maturity Benefit 25% S.A.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The policy can be surrendered at any time during the policy term provided premiums have been paid for full three years.\n" +
                "\n" +
                "Loan :\n" +
                "Loan facility is available under this plan after the payment of premiums for at least three full years.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• Premium paid under this plan is eligible for TAX rebate under section 80c.\n" +
                "• Maturity under this plan is free under sec 10(10D).";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
    public void func_817_child(View view)
    {
        String head=b33.getText().toString();
        String body="Plan :Single Premium Endowment (817)\n" +
                "\n" +
                "Product Summary :\n" +
                "Single Premium Endowment Plan (817) is a single premium, non-linked, with profits Endowment Plan.\n" +
                "\n" +
                "Premium Payment Mode:\n" +
                "Single Premium\n" +
                "\n" +
                "Term :\n" +
                "10 to 25 Years\n" +
                "\n" +
                "Minimum Entry Age :\n" +
                "90days Completed\n" +
                "\n" +
                "Maximum Entry Age :\n" +
                "65 Year (Nearest Birthday)\n" +
                "\n" +
                "Maximum Maturity Age :\n" +
                "75 Year\n" +
                "\n" +
                "Minimum Sum Assured :\n" +
                "50,000\n" +
                "\n" +
                "Maximum Sum Assured :\n" +
                "NO LIMIT (Depending upon Income)\n" +
                "\n" +
                "Policy Benefits :\n" +
                "On Death :\n" +
                "On Death after commencement of risk: Sum Assured + Vested Bonus + FAB if any\n" +
                "On Death before commencement of risk: Return of Single Premium excluding taxes and Extra Premium.\n" +
                "\n" +
                "\n" +
                "On Survival :\n" +
                "On survival Sum Assured + Vested Bonus + FAB if any.\n" +
                "\n" +
                "Surrendered Value :\n" +
                "The Policy can be surrendered at any time during the policy term subject to realization of the premium cheque.\n" +
                "\n" +
                "Loan :\n" +
                "Loan Facility is available under this plan, after completion of one policy year.\n" +
                "\n" +
                "Income Tax Benefit :\n" +
                "• u/s 80C up to 10% of SA.\n" +
                "\n" +
                "Proposal Form : 300/340 shall be used under this plan.";
        Intent in=new Intent(this,Main2Activity.class);
        in.putExtra("key_head",head);
        in.putExtra("key_body",body);
        startActivity(in);
    }
}
