let rec get_ludic (n : int) : int list =
    let ludic_series = [ 2 ; 3 ] in
    let current_sum = 0 in
    let rec get_next_ludic_number = function
        | (head::_) -> if head > n then [] else head :: get_next_ludic_number (List.tl ludic_series) in

    let rec get_lucid_numbers = function
        | [] -> []
        | (head::tail) -> if head > n then [] else head :: get_lucid_numbers tail in

    let rec get_all_lucid_numbers (n : int) (ludic_series : int list) =
        let current_sum = List.fold_left (fun x y -> x + y) 0 ludic_series in
        if current_sum > n then [] else ludic_series @ get_all_lucid_numbers n (get_next_ludic_number ludic_series) in

    get_all_lucid_numbers n ludic_series


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
