let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    let rec aux (i : int) (acc : int) : bool =
        if i >= n then
            acc >= n
        else if arr.(i) = x then
            aux (i + 1) (acc + 1)
        else
            aux (i + 1) acc
    in
    aux 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
