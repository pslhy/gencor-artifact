(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
let rec is_Sub_Array (a : int list) (b : int list) : bool =
    match a with
    | [] -> true
    | _ ->
        let elem = List.hd a
        let rest = List.tl a
        if elem = List.hd rest
        then is_Sub_Array (List.tl rest) (List.tl b)
        else List.mem y rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Sub_Array (a : int list) (b : int list) : bool =
    match a with
    | [] -> true
    | _ ->
        let elem = List.hd a in
        let rest = List.tl a in
        if elem = List.hd rest then
            is_Sub_Array (List.tl rest) (List.tl b)
        else
            List.mem y rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:22: Unbound value "y" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Sub_Array (a : int list) (b : int list) : bool =
    match a with
    | [] -> true
    | _ ->
        let elem = List.hd a in
        let rest = List.tl a in
        if elem = List.hd rest then
            is_Sub_Array (List.tl rest) (List.tl b)
        else
            List.mem None b

