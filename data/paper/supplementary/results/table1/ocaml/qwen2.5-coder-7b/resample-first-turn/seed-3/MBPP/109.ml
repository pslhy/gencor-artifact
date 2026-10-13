let rec odd_Equivalent (s : string) (n : int) : int = 
  let rotated = String.(s.[n mod length s] :: t s.[0..n mod length s - 1] |> of_string) in
  if rotated.[n mod length rotated] = '1' then 1 else 0

let solve (s : string) (queries : int list) : int list = 
  List.map (odd_Equivalent s) queries


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
