(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
let rec max_difference (test_list :  (int * int) list) : int = 
    match test_list with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                if compare head tail2 >= 0 then 0 else 
                let list1 = List.map (fun x -> x, head) tail in 
                    let list2 = List.map (fun x -> x, head2) tail2 in
                    max (max_difference list1) (max_difference list2)
              _ -> 0)
     _ -> 0

and compare (x : int * int) (y : int * int) : int = 
     if x < y then x#1 - y#1 else y#1 - x#1


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int =
    match test_list with
    | head :: tail ->
        (match tail with
        | head2 :: tail2 ->
            if compare head tail2 >= 0 then 0
            else
                let list1 = List.map (fun x -> x, head) tail in
                let list2 = List.map (fun x -> x, head2) tail2 in
                max (max_difference list1) (max_difference list2)
        | [] -> 0)
    | [] -> 0

and compare (x : int * int) (y : int * int) : int =
    if x < y then x#1 - y#1 else y#1 - x#1


(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:21: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int =
    match test_list with
    | head :: tail ->
        (match tail with
        | head2 :: tail2 ->
            if compare head tail2 >= 0 then 0
            else
                let list1 = List.map (fun x -> x, head) tail in
                let list2 = List.map (fun x -> x, head2) tail2 in
                max (max_difference list1) (max_difference list2)
        | [] -> 0)
    | [] -> 0

