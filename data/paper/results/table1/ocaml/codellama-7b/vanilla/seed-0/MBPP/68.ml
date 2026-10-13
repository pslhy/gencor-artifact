let rec is_Monotonic (a : int list) : bool =
  match a with
  | [] -> true
  | _ ->
    let rec aux (a : int list) (prev : int option) : bool =
      match a with
      | [] -> true
      | x :: xs ->
        match prev with
        | None -> aux xs (Some x)
        | Some p ->
          if p < x then aux xs (Some x) else false
    in
    aux a None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
