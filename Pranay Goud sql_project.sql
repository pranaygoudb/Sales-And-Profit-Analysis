use insuranceproject;

 select * from insurance ;
 
 -- Loan status by Gender and Marital Status --
 select gender, marrital_status, loan_status from insurance where marrital_status='yes';
 select count(gender),gender from insurance group by gender; 
 select gender, dependents,count(dependents) as dependent from insurance group by gender,dependents;
 select  gender,count(id) , loan_status from insurance where marrital_status='yes' and loan_status='y'group by gender ;


 -- Loan status by Credit history --
 select loan_status, Credit_History from insurance;
 select gender,count(gender),loan_status ,credit_history from insurance group by gender,loan_status,credit_history;
 select Credit_History,count(credit_history), loan_status from insurance group by loan_status, Credit_History;
 
 -- Loan status by Education --
 select education, loan_status from insurance;
 select gender,count(gender),education from insurance group by gender,education ;
 select education,count(education),loan_status from insurance group by education,loan_status;

 
 -- Loan status by Maturity term -- 
 select loan_status, maturity_term from insurance;
 select maturity_term,count(maturity_term) as count ,loan_status from insurance group by maturity_term,loan_status;
 select maturity_term,count(maturity_term)as count ,gender,loan_status from insurance group by maturity_term,loan_status,gender;

 
 -- Loan status by employment --
select loan_status, self_employed from insurance;
select self_employed,count(self_employed) as total,loan_status from insurance group by self_employed,loan_status;
select self_employed,count(self_employed) as total,loan_status,gender from insurance group by self_employed,loan_status,gender;
