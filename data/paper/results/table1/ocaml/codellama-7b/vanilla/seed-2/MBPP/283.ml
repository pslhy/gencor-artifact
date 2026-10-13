let rec validate (n : int) : bool =
  let digits = List.map (fun (d, c) -> (d, c = d)) (List.count (fun (d, c) -> d = c) (List.group (string_of_int n))) in
  letFrequencies freqs = List.forall (fun (d, f) -> if f > d then false else true) freqs in
  validate freqs;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
