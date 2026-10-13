let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    match (arr1, arr2) with
    | [], _ -> failwith "Invalid input"
    | _, [] -> failwith "Invalid input"
    | h1 :: t1, h2 :: t2 ->
        if k = 1 then
            h1
        else if k = length arr1 + length arr2 then
            h2
        else
            let (q1, r1) = k / length arr1 in
            let (q2, r2) = k / length arr2 in
            if q1 < q2 then
                find_kth t1 arr2 r1
            else
                find_kth t2 arr1 r2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
