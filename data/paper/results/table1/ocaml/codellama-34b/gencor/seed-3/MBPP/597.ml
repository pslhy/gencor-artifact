
let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    if k = 1 then
        if arr1 = [] then List.hd arr2 else List.hd arr1
    else
        let new_list = arr1 @ arr2 in
        let len = List.length new_list in
        if k > len then invalid_arg "k is greater than the length of the list" else
            let mid = len / 2 in
            if k = mid then List.nth new_list mid else
                if k < mid then find_kth (List.tl arr1) arr2 k else
                    find_kth arr1 (List.tl arr2) k

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
