(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
let rec get_Inv_Count (arr : int list) : int = 
    let count_inv [x] = 0
    and count_inv [] = 0
    and count_inv (x::xs) = 
        let cnt1 = List.fold_left (fun a b -> a + (if b < x then 1 else 0)) 0 xs
        and cnt2 = count_inv xs
    in
    count_inv arr
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
    let rec count_inv lst cnt = 
        match lst with
        | [] -> cnt
        | x::xs -> 
            let cnt1 = List.fold_left (fun a b -> a + (if b < x then 1 else 0)) 0 xs
            let cnt2 = count_inv xs 0
        in
        count_inv xs (cnt + cnt1 + cnt2)
    in
    count_inv arr 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
    let rec count_inv lst cnt = 
        match lst with
        | [] -> cnt
        | x::xs -> 
            let cnt1 = List.fold_left (fun a b -> a + (if b < x then 1 else 0)) 0 xs
            let cnt2 = count_inv xs cnt
        in
        count_inv xs (cnt + cnt1 + cnt2)
    in
    count_inv arr 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
    let rec count_inv lst cnt = 
        match lst with
        | [] -> cnt
        | x::xs -> 
            let cnt1 = List.fold_left (fun a b -> a + (if b < x then 1 else 0)) 0 xs
            let cnt2 = count_inv xs cnt
        in
        count_inv xs (cnt + cnt1 + cnt2)
    in
    count_inv arr 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
    let rec count_inv lst cnt = 
        match lst with
        | [] -> cnt
        | x::xs -> 
            let cnt1 = List.fold_left (fun a b -> a + (if b < x then 1 else 0)) 0 xs
            let cnt2 = count_inv xs cnt
        in
        count_inv xs (cnt + cnt1 + cnt2)
    in
    count_inv arr 0

