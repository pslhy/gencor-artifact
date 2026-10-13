let rec is_Sub_Array (a : int list) (b : int list) : bool = 
    (* base case: a or b are empty lists *)
    let rec base_case a b = 
        match a, b with 
        | [], _ -> false
        | _, [] -> false
        | _, _ -> true
    in
    (* function to check if b is a sublist of a *)
    let rec check_sub_Array a b = 
        match a with 
        | [] -> false
        | h :: t -> if List.mem h b then check_sub_Array b h else check_sub_Array b t
    in
    is_Sub_Array a b = check_sub_Array a b;;

(* examples *)
is_Sub_Array [1;2;3] [1;2;3;4] = true;;
is_Sub_Array [1;2;3] [4;5;6] = false;;
is_Sub_Array [1;2;3;4] [1;2;3] = true;;
is_Sub_Array [1;2;3;4] [4;5;6] = false;;

(* Ouput
true
false
true
false *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
