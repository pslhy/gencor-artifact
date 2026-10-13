let rec move_zero (num_list : int list) : int list = 
    let rec filter_nonzero acc = function
        | [] -> acc
        | x::xs -> if x <> 0 then filter_nonzero (x::acc) xs else filter_nonzero acc xs
    in
    let rec count_zeros = function
        | [] -> 0
        | 0::xs -> 1 + count_zeros xs
        | _::xs -> count_zeros xs
    in
    let non_zero_list = filter_nonzero [] num_list in
    let zero_count = count_zeros num_list in
    non_zero_list @ (List.init zero_count (fun _ -> 0))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
