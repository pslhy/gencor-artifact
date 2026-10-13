let rec validate (n : int) : bool =
  match n with
  | 0 -> true
  | _ -> let digit = n mod 10 in
         let digit_count = String.length (string_of_int (digit)) in
         if (n / 10) mod digit = 0 then false else validate (n / 10)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
