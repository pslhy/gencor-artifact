let rec triangle_area (a : int) (h : int) : float =
    let b = a / 2 in
    let c = sqrt (a ** 2. + h ** 2.) in
    (a * b * c) / 2.
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given length of a side and high return area for a triangle. *)
(*     >>> triangle_area 5 3 *)
(*     7.5 *)
