let rec is_decimal (num : string) : bool =
    match num with
    | [] -> false
    | _ ->
        let int_part = List.take_while (fun x -> x != '.') num in
        let frac_part = List.drop_while (fun x -> x != '.') num in
        let precision = List.length frac_part in
        if precision > 2 then false
        else if precision = 1 && not (List.for_all (fun x -> x != '0') frac_part) then false
        else true


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
