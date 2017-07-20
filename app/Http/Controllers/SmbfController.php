<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class SmbfController extends Controller
{
	 public function welcome(){

    	return view('welcome');
    }
    
    public function budget(){
    	$bg=DB::table('budget','ASC')->get();
        $specialists = DB::table('budget')->distinct()->get(['specialist']);
    	return view('home',compact('bg','specialists'));
    }

    public function payment(){
        return view('payment');
    }

    public function getBudgetJsGrid($specialist='0'){
		
    	//dd(request()->input());
    	$fProjectName = request()->input('filter.projectName');
        $fProgramName = request()->input('filter.programName');
        $fScopeName = request()->input('filter.scopeName');
        $fProjectPercent = request()->input('filter.projectPercent');
        $fProgramPercent = request()->input('filter.programPercent');
        $fScopePercent = request()->input('filter.scopePercent');
        $fProjectBudget = request()->input('filter.projectBudget');
        $fProgramBudget = request()->input('filter.programBudget');
        $fScopeBudget = request()->input('filter.scopeBudget');
        $fTotal = request()->input('filter.total');
        $fM1 = request()->input('filter.m1');
        $fM2 = request()->input('filter.m2');
        $fM3 = request()->input('filter.m3');
        $fM4 = request()->input('filter.m4');
        $fM5 = request()->input('filter.m5');
        $fM6 = request()->input('filter.m6');
        $fM7 = request()->input('filter.m7');
        $fM8 = request()->input('filter.m8');
        $fM9 = request()->input('filter.m9');
        $fM10 = request()->input('filter.m10');
        $fM11 = request()->input('filter.m11');
        $fM12 = request()->input('filter.m12');
        $fQ1 = request()->input('filter.Q1');
        $fQ2 = request()->input('filter.Q2');
        $fQ3 = request()->input('filter.Q3');
        $fQ4 = request()->input('filter.Q4');
        $fProjectSpend = request()->input('filter.projectSpend');
        $fProjectRemain = request()->input('filter.projectRemain');
        $fScopeSpend = request()->input('filter.scopeSpend');
        $fProgramSpend = request()->input('filter.programSpend');
        $fSch_M1 = request()->input('filter.Sch_M1');
        $fSch_M2 = request()->input('filter.Sch_M2');
        $fSch_M3 = request()->input('filter.Sch_M3');
        $fSch_M4 = request()->input('filter.Sch_M4');
        $fSch_M5 = request()->input('filter.Sch_M5');
        $fSch_M6 = request()->input('filter.Sch_M6');
        $fSch_M7 = request()->input('filter.Sch_M7');
        $fSch_M8 = request()->input('filter.Sch_M8');
        $fSch_M9 = request()->input('filter.Sch_M9');
        $fSch_M10 = request()->input('filter.Sch_M10');
        $fSch_M11 = request()->input('filter.Sch_M11');
        $fSch_M12 = request()->input('filter.Sch_M12');
        $fSch_Total = request()->input('filter.Sch_Total');
        $fSch_Q1 = request()->input('filter.Sch_Q1');
        $fSch_Q2 = request()->input('filter.Sch_Q2');
        $fSch_Q3 = request()->input('filter.Sch_Q3');
        $fSch_Q4 = request()->input('filter.Sch_Q4');    
    	$query = DB::table('budget','ASC');
    	if($fProjectName){
    		$query->where('projectName', 'like', "%{$fProjectName}%");
    	}
    	if($fProgramName){
            $query->where('programName', 'like', "%{$fProgramName}%");
        }
        if($fScopeName){
            $query->where('scopeName', 'like', "%{$fScopeName}%");
        }
        if($fProjectPercent){
            $query->where('projectPercent', 'like', "%{$fProjectPercent}%");
        }
        if($fProgramPercent){
            $query->where('programPercent', 'like', "%{$fProgramPercent}%");
        }
        if($fScopePercent){
            $query->where('scopePercent', 'like', "%{$fScopePercent}%");
        }
        if($fProjectBudget){
            $query->where('projectBudget', 'like', "%{$fProjectBudget}%");
        }
        if($fProgramBudget){
            $query->where('programBudget', 'like', "%{$fProgramBudget}%");
        }
        if($fScopeBudget){
            $query->where('scopeBudget', 'like', "%{$fScopeBudget}%");
        }
        if($fTotal){
            $query->where('total', 'like', "%{$fTotal}%");
        }
        if($fM1){
            $query->where('m1', 'like', "%{$fM1}%");
        }
        if($fM2){
            $query->where('m2', 'like', "%{$fM2}%");
        }
        if($fM3){
            $query->where('m3', 'like', "%{$fM3}%");
        }
        if($fM4){
            $query->where('m4', 'like', "%{$fM4}%");
        }
        if($fM5){
            $query->where('m5', 'like', "%{$fM5}%");
        }
        if($fM6){
            $query->where('m6', 'like', "%{$fM6}%");
        }
        if($fM7){
            $query->where('m7', 'like', "%{$fM7}%");
        }
        if($fM8){
            $query->where('m8', 'like', "%{$fM8}%");
        }
        if($fM9){
            $query->where('m9', 'like', "%{$fM9}%");
        }
        if($fM10){
            $query->where('m10', 'like', "%{$fM10}%");
        }
        if($fM11){
            $query->where('m11', 'like', "%{$fM11}%");
        }
        if($fM12){
            $query->where('m12', 'like', "%{$fM12}%");
        }
        if($fQ1){
            $query->where('Q1', 'like', "%{$fQ1}%");
        }
        if($fQ2){
            $query->where('Q2', 'like', "%{$fQ2}%");
        }
        if($fQ3){
            $query->where('Q3', 'like', "%{$fQ3}%");
        }
        if($fQ4){
            $query->where('Q4', 'like', "%{$fQ4}%");
        }
        if($fProjectSpend){
            $query->where('projectSpend', 'like', "%{$fProjectSpend}%");
        }
        if($fProjectRemain){
            $query->where('projectRemain', 'like', "%{$fProjectRemain}%");
        }
        if($fScopeSpend){
            $query->where('scopeSpend', 'like', "%{$fScopeSpend}%");
        }
        if($fProgramSpend){
            $query->where('programSpend', 'like', "%{$fProgramSpend}%");
        }
        if($fSch_M1){
            $query->where('Sch_M1', 'like', "%{$fSch_M1}%");
        }
        if($fSch_M2){
            $query->where('Sch_M2', 'like', "%{$fSch_M2}%");
        }
        if($fSch_M3){
            $query->where('Sch_M3', 'like', "%{$fSch_M3}%");
        }
        if($fSch_M4){
            $query->where('Sch_M4', 'like', "%{$fSch_M4}%");
        }
        if($fSch_M5){
            $query->where('Sch_M5', 'like', "%{$fSch_M5}%");
        }
        if($fSch_M6){
            $query->where('Sch_M6', 'like', "%{$fSch_M6}%");
        }
        if($fSch_M7){
            $query->where('Sch_M7', 'like', "%{$fSch_M7}%");
        }
        if($fSch_M8){
            $query->where('Sch_M8', 'like', "%{$fSch_M8}%");
        }
        if($fSch_M9){
            $query->where('Sch_M9', 'like', "%{$fSch_M9}%");
        }
        if($fSch_M10){
            $query->where('Sch_M10', 'like', "%{$fSch_M10}%");
        }
        if($fSch_M11){
            $query->where('Sch_M11', 'like', "%{$fSch_M11}%");
        }
        if($fSch_M12){
            $query->where('Sch_M12', 'like', "%{$fSch_M12}%");
        }
        if($fSch_Total){
            $query->where('Sch_Total', 'like', "%{$fSch_Total}%");
        }
        if($fSch_Q1){
            $query->where('Sch_Q1', 'like', "%{$fSch_Q1}%");
        }
        if($fSch_Q2){
            $query->where('Sch_Q2', 'like', "%{$fSch_Q2}%");
        }
        if($fSch_Q3){
            $query->where('Sch_Q3', 'like', "%{$fSch_Q3}%");
        }
        if($fSch_Q4){
            $query->where('Sch_Q4', 'like', "%{$fSch_Q4}%");
        }
		if($specialist!='0'){
			$query->where('specialist', '=', $specialist);
		}
    	return $query->get();
    }


     public function getBudgetJsGridd(){
        $fId = request()->input('filter.id');
        $fCode = request()->input('filter.Code');
        $fPaymentNumber = request()->input('filter.PaymentNo');
        $fPaymentName = request()->input('filter.PayeeName');
        $fProjectName = request()->input('filter.ProjectName');
        $fProgramName = request()->input('filter.ProgramName');
        $fScopeName  = request()->input('filter.ScopeName');
        $fArea = request()->input('filter.Area');
        $fCity = request()->input('filter.City');
        $fAmount = request()->input('filter.Amount');
        $fCurrency = request()->input('filter.Currency');
        $fToOrder  = request()->input('filter.ToOrder');
        $fPayTo   = request()->input('filter.PayTo');
        $fPaymentMethod = request()->input('filter.PaymentMethod');
        $fDate = request()->input('filter.Date');
        $fApprover1 = request()->input('filter.Approver1');
        $fApprover2 = request()->input('filter.Approver2');
        $fApprover3 = request()->input('filter.Approver3');
        $fApprover4 = request()->input('filter.Approver4');
        $fApprover5 = request()->input('filter.Approver5');
        $fApprovementNote1 = request()->input('filter.ApprovementNote1');
        $fApprovementNote2 = request()->input('filter.ApprovementNote2');
        $fApprovementNote3 = request()->input('filter.ApprovementNote3');
        $fApprovementNote4 = request()->input('filter.ApprovementNote4');
        $fAim = request()->input('filter.Aim');
        $fAmountText = request()->input('filter.AmountText');
        $fBankDetails = request()->input('filter.BankDetails');
        $fSendToPayee = request()->input('filter.IsNotifySendToPayee');
        $fAmountDescription = request()->input('filter.AmountDescription');
        $query = DB::table('payment','ASC');
        if($fId){
            $query->where('id', 'like', "%{$fId}%");
        }
        if($fCode){
            $query->where('Code', 'like', "%{$fCode}%");
        }
        if($fPaymentNumber){
            $query->where('PaymentNo', 'like', "%{$fPaymentNumber}%");
        }
        if($fPaymentName){
            $query->where('PayeeName', 'like', "%{$fPaymentName}%");
        }
        if($fProjectName){
            $query->where('ProjectName', 'like', "%{$fProjectName}%");
        }
        if($fProgramName){
            $query->where('ProgramName', 'like', "%{$fProgramName}%");
        }
        if($fScopeName){
            $query->where('ScopeName', 'like', "%{$fScopeName}%");
        }
        if($fArea){
            $query->where('Area', 'like', "%{$fArea}%");
        }
        if($fCity){
            $query->where('City', 'like', "%{$fCity}%");
        }
        if($fAmount){
            $query->where('Amount', 'like', "%{$fAmount}%");
        }
        if($fCurrency){
            $query->where('Currency', 'like', "%{$fCurrency}%");
        }
        if($fToOrder){
            $query->where('ToOrder', 'like', "%{$fToOrder}%");
        }
        if($fPayTo){
            $query->where('PayTo', 'like', "%{$fPayTo}%");
        }
        if($fPaymentMethod){
            $query->where('PaymentMethod', 'like', "%{$fPaymentMethod}%");
        }

        if($fDate){
            $query->where('Date', 'like', "%{$fDate}%");
        }
        if($fApprover1){
            $query->where('Approver1', 'like', "%{$fApprover1}%");
        }
        if($fApprover2){
            $query->where('Approver2', 'like', "%{$fApprover2}%");
        }
        if($fApprover3){
            $query->where('Approver3', 'like', "%{$fApprover3}%");
        }
        if($fApprover4){
            $query->where('Approver4', 'like', "%{$fApprover4}%");
        }
        if($fApprover5){
            $query->where('Approver5', 'like', "%{$fApprover5}%");
        }
        if($fApprovementNote1){
            $query->where('ApprovementNote1', 'like', "%{$fApprovementNote1}%");
        }
        if($fApprovementNote2){
            $query->where('ApprovementNote2', 'like', "%{$fApprovementNote2}%");
        }
        if($fApprovementNote3){
            $query->where('ApprovementNote3', 'like', "%{$fApprovementNote3}%");
        }
        if($fApprovementNote4){
            $query->where('ApprovementNote4', 'like', "%{$fApprovementNote4}%");
        }
         if($fAim){
            $query->where('Aim', 'like', "%{$fAim}%");
        }
        if($fAmountText){
            $query->where('AmountText', 'like', "%{$fAmountText}%");
        }
        
        if($fBankDetails){
            $query->where('BankDetails', 'like', "%{$fBankDetails}%");
        }
        if($fSendToPayee){
            $query->where('IsNotifySendToPayee', 'like', "%{$fSendToPayee}%");
        }
        if($fAmountDescription){
            $query->where('AmountDescription', 'like', "%{$fAmountDescription}%");
        }
        return $query->get();
    }
}