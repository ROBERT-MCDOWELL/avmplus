/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


/*
 *
 * Date:    17 February 2003
 * SUMMARY: Testing empty blocks
 *
 * See http://bugzilla.mozilla.org/show_bug.cgi?id=193418
 *
 */
//-----------------------------------------------------------------------------
var gTestfile = 'regress-193418.js';
var UBound = 0;
var BUGNUMBER = 193418;
var summary = 'Testing empty blocks';
var status = '';
var statusitems = [];
var actual = '';
var actualvalues = [];
var expect= '';
var expectedvalues = [];


function f()
{
  while (0)
  {
    {  }
  }
  actual = true;
}


//status = inSection(1);
f();  // sets |actual|
expect = true;
addThis();



//-----------------------------------------------------------------------------
addtestcases();
//-----------------------------------------------------------------------------



function addThis()
{
  statusitems[UBound] = status;
  actualvalues[UBound] = actual;
  expectedvalues[UBound] = expect;
  UBound++;
}


function addtestcases()
{

  //printBugNumber(BUGNUMBER);
//printStatus(summary);

  for (var i=0; i<UBound; i++)
  {
    Assert.expectEq(statusitems[i], expectedvalues[i], actualvalues[i]);
  }


}

