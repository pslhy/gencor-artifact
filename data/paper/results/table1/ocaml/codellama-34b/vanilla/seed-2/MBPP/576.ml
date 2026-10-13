let rec is_Sub_Array (a : int list) (b : int list) : bool =
    match a with
    | [] -> true
    | _ ->
        let elem = List.hd a
        let rest = List.tl a
        if elem = List.hd rest
        then is_Sub_Array (List.tl rest) (List.tl b)
        else List.mem y rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
