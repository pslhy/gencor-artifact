let rec sum_average (number : int) :  int * float =
  if number = 1 then
    (number, float_of_int number /. 1.0)
  else
    let sum = ref (float_of_int number) in
    let rec aux (i: int) : unit =
      if i > number then ()
      else ( sum := !sum +. (float_of_int i); aux (i + 1)) in
    aux 1;
    (number, !sum /. (float_of_int number))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
