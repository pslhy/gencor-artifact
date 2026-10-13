let rec comb_sort (nums : int list) : int list =
    let swapped = ref false in
    let rec swap (l : int list) : unit =
        match l with
        | [] | [_] -> ()
        | x0 :: x1 :: xs ->
            if x0 > x1 then (
                swapped := true;
                swap (x1 :: xs)
            )
            else (
                swapped := false;
                swap (xs)
            )
    in
    if not !swapped then nums
    else (
        swap nums;
        comb_sort nums
    )


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
