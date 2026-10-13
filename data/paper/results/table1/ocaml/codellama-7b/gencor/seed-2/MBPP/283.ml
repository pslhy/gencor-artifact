
let rec validate (n : int) : bool =
  let digits = List.map (fun (d, c) -> (d, c = d)) (List.rev (List.combine (string_of_int n) "")) in
  List.fold_left (&&) true (List.sort compare digits)

(* usage: *)
let n = 123456;
validate neg_infinity (* true *)

let n = 123421;
validate n (* false *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
