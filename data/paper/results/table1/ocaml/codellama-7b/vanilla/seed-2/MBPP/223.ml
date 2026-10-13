let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    match arr with
    | [] -> false
    | _ :: xs when x > n / 2 ->
        let rec count (arr : int list) (x : int) (count : int) : int =
            match arr with
            | [] -> count
            | y :: xs when y = x -> count + 1
            | y :: xs -> count count xs x
        in
        count arr x 0 >= n / 2
    | y :: xs when y = x ->
        let rec count (arr : int list) (x : int) (count : int) : int =
            match arr with
            | [] -> count
            | y :: xs when y = x -> count + 1
            | y :: xs -> count count xs x
        in
        count xs x 0 >= n / 2
    | _ :: xs -> is_majority xs (n - 1) x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
