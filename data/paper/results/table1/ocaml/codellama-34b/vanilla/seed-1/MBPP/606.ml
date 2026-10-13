let rec radian_degree (degree : int) : float =
    let pi = 4.0 *. atan 1.0 in
    degree *. pi /. 180.0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert degrees to radians. *)
