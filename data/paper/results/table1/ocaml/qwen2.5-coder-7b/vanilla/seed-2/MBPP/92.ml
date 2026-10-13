let rec is_undulating (n : int) : bool = 
    let rec helper (n : int) (a : int) (b : int) : bool =
        if n = 0 then true
        else if n mod 10 = a || n mod 10 = b then helper (n / 10) b a
        else false
    in
    match n with
    | _ when n < 100 -> false
    | _ when n = 111 -> false
    | _ -> let digits = Array.of_list (List.rev (String.to_list (string_of_int n))) in
           is_undulating (int_of_string (List.fold_left (fun acc c -> acc ^ string_of_char c) "" (Array.to_list (Array.sub digits 0 (Array.length digits - 1))))) (int_of_char digits.(0)) (int_of_char digits.(Array.length digits - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
