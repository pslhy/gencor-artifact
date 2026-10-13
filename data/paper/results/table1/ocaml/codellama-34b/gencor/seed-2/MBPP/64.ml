
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (subject, mark) :: remainder ->
      if mark = 0 then (subject, mark) :: subject_marks(remainder)
      else
      let rec loop (subject, mark) (sorted_subject, sorted_marks) =
         match sorted_subject with
         | [] -> (subject, mark) :: sorted_subject, sorted_marks
         | (sorted_subject, sorted_mark) :: tail ->
           if mark >= sorted_mark then (sorted_subject, sorted_mark) :: loop(subject, mark, (sorted_subject, sorted_marks))
           else (subject, mark) :: (sorted_subject, sorted_marks)
      loop (subject, mark) (remainder)

(**
 Week 2 : Exercise 1
 Consider the following specification for a class for solving a system of linear equations:
 class LinearEquationSolver
 {
 public:
   void solve(double coefficients[], double solution[])
   {
     double solution[2] = {0.0, 0.0};
     for(int i = 0; i < 2; i++)
     {
        solution[i] = coefficients[i]/coefficients[2];
     }
   }
};

Write the test case for the above class that would catch the error of the division by zero in the case
of ill-conditioned coefficient matrix.
*)

(**
   (use "Solution.ml"
   ε Diffie-Hellman Exchange.exch)
  *)

  (** 
   
    The test case is as follow : 
    
     check (coefficients : float array, solution : float array) => 
      (if coefficients.Length = solution.Length 
       then bugTA(null)
      else bugTA(null)
             qui
              let expectedSolution = solveExpected(coefficients)
       expect( expectedSolution == Array.min(coefficients) && Array.max(coefficients))
  
     let (conditions : float array, solution : float array) = ([| 1.0; 2.0; 3.0; 4.0; 5.0 |], [| 1.0; 2.0; 3.0; 4.0; 5.0 |])
     let linEqSolver = new LinearEquationSolver()
     linEqSolver.solve(conditions, solution)
     check(conditions, solution)
  
    
     The test case check if the length of coefficient array and solution array are equal  :
     if not, it expect a bug TA with null.
     if both array length are equal, it compute the expected solution and compare it to the result of the LinearEquationSolver.

  *)

  (*** include: prototypeTupleSolutionC.txt ***)

    (*** include: prototypeTupleLinearEquationSolver.txt  ***)

   (*** include: prototypeTupleExpectedSolution.txt ***)

   (*** include: prototypeTupleTestCase.txt ***)

   (*** include: prototypeTupleTest.txt ***)
  
   (*** include: prototypeTupleMain.txt ***)

   (*** include : subject_marks.txt ***)

  (*** include : msprintf.txt ***)

  (*** include : prerr_endline.txt ***)

  (*** include : sprintf.txt ***)

  (*** include : squareBracket.txt ***)

  (*** include : make_set.txt ***)

  (*** include : arrayToList.txt ***)

  (*** include : listToArray.txt ***)

  (*** include : zip.txt ***)

  (*** include : sortArray.txt ***)

  (*** include : findFirst.txt ***)

 (*** include : setToList.txt ***)

  (*** include : cycleDetected.txt ***)

  (*** include : versionsList.txt ***)

  (*** include : versionsSourceDest.txt ***)

  (*** include : versionsTopologicalSort.txt ***)

  (*** include : inductionIdToWitness.txt ***)

  (*** include : inductionProofTree.txt ***)

  (*** include : indexToReduceCoefficient.txt ***)

  (*** include : reduceCoefficient.txt ***)

  (*** include : hasSeenInduction.txt ***)

  (*** include : eventHandler.txt ***)

  (*** include : reduce theory.txt ***)

  (*** include : ggpattern.txt ***)
 
  (*** include : deploy theorem.txt ***)
 
  (*** include : deploy theorem.txt ***)

  (*** include: version ggpattern.txt ***)

  (*** include: deploy version theory.txt ***)

  (*** include: deploy model.txt ***)

  (*** include: deploy context.txt ***)

  (*** include: deploy type.txt ***)

  (*** include: deploy type.txt ***)

  (*** include: quantifier.txt ***)

  (*** include: deploy quantifier.txt ***)

  (*** include: deploy rule application.txt ***)

  (*** include: application quantifier.txt ***)

  (*** include: deploy application.txt ***)

  (*** include: deploy.txt ***)

  (*** include: theorem versions.txt ***)

  (*** include: versions source.txt ***)

  (*** include: versions destination.txt ***)

  (*** include: versions id index.txt ***)

  (*** include: versions match patter.txt ***)

  (*** include: versions id winditness.txt ***)

  (*** include: versions id inductconj.txt ***)

  (*** include: versions id exists.txt ***)

  (*** include: deploy exists.txt ***)

  (*** include: versions expand policy.txt ***)

  (*** include: versions size induct rule.txt ***)

  (*** include: versions moment of ggpattern.txt ***)

  (*** include: versions apply count.txt ***)

  (*** include: versions apply form id.txt ***)

  (*** include: deploy apply rule.txt ***)

  (*** include: versions apply type option.txt ***)

  (*** include: versions mapping.txt ***)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
