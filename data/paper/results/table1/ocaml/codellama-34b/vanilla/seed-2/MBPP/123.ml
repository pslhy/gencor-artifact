let rec amicable_numbers_sum (limit : int) : int =
    let amicable_numbers = get_amicable_numbers limit in
    List.fold_left (+) 0 amicable_numbers

and get_amicable_numbers (limit : int) : int list =
    let rec loop acc n =
        if n = 1 then acc
        else if is_amicable_number n then loop (n :: acc) (n - 1)
        else loop acc (n - 1)
    in
    loop [] limit

and is_amicable_number (n : int) : bool =
    let d = n / 2 in
    let sum_of_factors =
        let rec loop acc i =
            if i > d then acc
            else if n mod i = 0 then loop (acc + i) (i + 1)
            else loop acc (i + 1)
        in
        loop 0 1
    in
    sum_of_factors = n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
