let rec digit_distance_nums (n1 : int) (n2 : int) : int = 
    let abs_diff x y = abs (x - y) in
    let to_digit_list n =
        let rec loop n acc =
            if n = 0 then acc
            else loop (n / 10) ((n mod 10) :: acc)
        in loop n []
    in
    let digit_list1 = to_digit_list n1 in
    let digit_list2 = to_digit_list n2 in
    let rec sum_diffs lst1 lst2 sum =
        match lst1, lst2 with
        | [], [] -> sum
        | x::xs, y::ys -> sum_diffs xs ys (sum + abs_diff x y)
        | _ -> sum
    in 
    sum_diffs digit_list1 digit_list2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
