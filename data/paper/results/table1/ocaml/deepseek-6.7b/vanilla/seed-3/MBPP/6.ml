let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  match (a, b) with
  | (0, 0), (1, 1) -> true
  | (0, 1), (1, 0) -> true
  | _ when a = b -> false
  | (ha, tla), (hb, tlb) -> differ_At_One_Bit_Pos (ha, tla) (hb, tlb)
  ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
