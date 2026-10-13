let rec sum_average (number : int) :  int * float =
  if (number <= 1) then begin
    0, 0.0
  end else begin
    let next_number = (number - 1)
    in
      ((number) + sum_average (number - 1)), ((float_of_int (number) + sum_average (number - 1)) /. (float_of_int (number))))
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
