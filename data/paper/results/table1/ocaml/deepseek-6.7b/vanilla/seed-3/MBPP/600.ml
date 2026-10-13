let rec is_Even (n : int) : bool =
  match n with
    | 0 -> true
    | _ when n < 0 -> is_Even (-n)
    | _ -> is_Odd (n - 1)
and is_Odd (n : int) : bool =
  match n with
    | 0 -> false
    | _ when n < 0 -> is_Odd (-n)
    | _ -> is_Even (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number is even or not. *)
