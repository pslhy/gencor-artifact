(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert degrees to radians. *)
let rec radian_degree (degree : int) : float =
    match degree with
    | 0 -> 0.0
    | x -> x *. 0.017453292519943295

