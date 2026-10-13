let rec is_Sub_Array (a : int list) (b : int list) : bool =
    match a with
    | [] -> false
    | _ ->
        let rec aux (a : int list) (b : int list) : bool =
            match a, b with
            | [], [] -> true
            | [], _ -> false
            | h1 :: t1, h2 :: t2 -> h1 = h2 && aux t1 t2
            | _ -> false
        in
        let _, _ = List.fold_left (fun (acc, l) x -> if List.mem x l then (acc, l) else (acc + 1, l @ [x])) (0, []) a in
        aux a b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
