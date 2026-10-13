let rec smallest_change (arr : int list) : int =
    let n = List.length arr in
    if n = 1 then
        0
    else if n = 2 then
        if arr.(0) = arr.(1) then
            0
        else
            1
    else
        let rec aux (i : int) (j : int) (d : int) (c : int) : int =
            if i = n / 2 then
                min d c
            else if arr.(i) = arr.(j) then
                aux (i + 1) (j + 1) d c
            else
                let d' = 1 + d in
                let c' = 1 + c in
                let c'' = min c' (aux (i + 1) (j + 1) d c') in
                aux (i + 1) (j + 1) d' c''
        in
        aux 0 (n / 2) 0 0

let _ =
    let arr = [|1; 2; 3; 5; 4; 7; 9; 6|] in
    print_int @@ smallest_change arr
let _ =
    let arr = [|1; 2; 3; 4; 3; 2; 2|] in
    print_int @@ smallest_change arr
let _ =
    let arr = [|1; 2; 3; 2; 1|] in
    print_int @@ smallest_change arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list arr of integers, find the minimum number of elements that *)
(*     need to be changed to make the list palindromic. A palindromic list is a list that *)
(*     is read the same backwards and forwards. In one change, you can change one element to any other element. *)
(*     For example: *)
(*     >>> smallest_change [1; 2; 3; 5; 4; 7; 9; 6] *)
(*     4 *)
(*     >>> smallest_change [1; 2; 3; 4; 3; 2; 2] *)
(*     1 *)
(*     >>> smallest_change [1; 2; 3; 2; 1] *)
(*     0 *)
