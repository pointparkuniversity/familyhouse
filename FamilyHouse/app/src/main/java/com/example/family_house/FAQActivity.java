package com.example.family_house;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class FAQActivity extends AppCompatActivity {


    public void openActivity2() {
        Intent intent = new Intent(this, Activity2.class);
        startActivity(intent);


    }
    public static HashMap<String, List<String>> getData() {
        HashMap<String, List<String>> expandableListDetail = new HashMap<String, List<String>>();

        List<String> cricket = new ArrayList<String>();
        cricket.add("Family House is a 501(c)(3) non-profit charitable organization greatly supported by community donations whose mission is to. It provides a convenient and affordable “home away from home” for patients and their caregivers who must travel to Pittsburgh for medical treatment of life-threatening illness.");

        List<String> football = new ArrayList<String>();
        football.add("Family House is a 501(c)(3) non-profit charitable organization governed by a community Board of Directors. We rely on donations to support the homes and services provided to all guests. \n" +
                "Family House’s charitable care—which is the difference between what a room costs the organization to operate vs. what Family House charges—amounts to more than $1.2 million annually. These funds are provided each year through generous contributions from individuals, companies, foundations, and other organizations.\n");


        List<String> basketball = new ArrayList<String>();
        basketball.add("Family House has three locations in Pittsburgh’s Oakland and Shadyside neighborhoods. Family House Neville is located at 514 N. Neville St., Pittsburgh, PA, 15213 \n" +
                "Family House Shadyside is located at 5245 Centre Ave., Pittsburgh, PA, 15232 and \n" +
                "Family House University Place is located at 116 Thackeray Ave.,  Pittsburgh, PA, 15213.\n");


        expandableListDetail.put("What is Family House?", cricket);
        expandableListDetail.put("Where is Family House Located?", basketball);
        expandableListDetail.put("How is Family House funded?", football);


        return expandableListDetail;
    }

    public
    ExpandableListView expandableListView;
    ExpandableListAdapter expandableListAdapter;
    List<String> expandableListTitle;
    HashMap<String, List<String>> expandableListDetail;

    @SuppressLint("WrongConstant")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_2);

        getSupportActionBar().setDisplayOptions(ActionBar.DISPLAY_SHOW_CUSTOM);
        getSupportActionBar().setCustomView(R.layout.action_bar_layout);

        expandableListView = (ExpandableListView) findViewById(R.id.expandableListView);
        expandableListDetail = ExpandableListDataPump.getData();
        expandableListTitle = new ArrayList<String>(expandableListDetail.keySet());
        expandableListAdapter = new CustomExpandableListAdapter(this, expandableListTitle, expandableListDetail);
        expandableListView.setAdapter(expandableListAdapter);
        expandableListView.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {

            @Override
            public void onGroupExpand(int groupPosition) {
                Toast.makeText(getApplicationContext(),
                        expandableListTitle.get(groupPosition) + " List Expanded.",
                        Toast.LENGTH_SHORT).show();
            }
        });

        expandableListView.setOnGroupCollapseListener(new ExpandableListView.OnGroupCollapseListener() {

            @Override
            public void onGroupCollapse(int groupPosition) {
                Toast.makeText(getApplicationContext(),
                        expandableListTitle.get(groupPosition) + " List Collapsed.",
                        Toast.LENGTH_SHORT).show();

            }
        });

        expandableListView.setOnChildClickListener(new ExpandableListView.OnChildClickListener() {
            @Override
            public boolean onChildClick(ExpandableListView parent, View v,
                                        int groupPosition, int childPosition, long id) {
                Toast.makeText(
                        getApplicationContext(),
                        expandableListTitle.get(groupPosition)
                                + " -> "
                                + expandableListDetail.get(
                                expandableListTitle.get(groupPosition)).get(
                                childPosition), Toast.LENGTH_SHORT
                ).show();
                return false;
            }
        });
    }

}