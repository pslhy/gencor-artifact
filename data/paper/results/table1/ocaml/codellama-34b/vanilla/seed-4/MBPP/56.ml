let rec checks (n : int) : bool = 
    let (r, d) = (0, List.rev (string_of_int n)) in
    List.for_all2 (fun x y -> x = y) (string_of_int (n + 1)) d


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
