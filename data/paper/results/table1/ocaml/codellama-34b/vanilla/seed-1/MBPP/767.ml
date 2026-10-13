let rec get_pairs_count (arr : int list) (sum : int) : int =
    let rec aux (arr : int list) (sum : int) (i : int) : int =
        if i < 0 then
            0
        else
            (if arr.(i) + arr.(i - 1) = sum then
                1 + aux arr sum (i - 1)
            else
                aux arr sum (i - 1))
    in
    aux arr sum (List.length arr - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
