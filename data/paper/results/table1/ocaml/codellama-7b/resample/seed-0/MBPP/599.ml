(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
let rec sum_average (number : int) :  int * float =
  if (number <= 1) then begin
    0, 0.0
  end else begin
    let next_number = (number - 1)
    in
      ((number) + sum_average (number - 1)), ((float_of_int (number) + sum_average (number - 1)) /. (float_of_int (number))))
  end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:125: Syntax error: "end" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_average (number : int) :  int * float =
  if (number <= 1) then begin
    (0, 0.0)
  end else begin
    let rec sum_aux (n : int) : int =
      if (n <= 1) then 0 else n + sum_aux (n - 1)
    in
    let aux_result = sum_aux number
    in
    let average = (float_of_int aux_result) /. (float_of_int number)
    in
    (aux_result, average)
  end

