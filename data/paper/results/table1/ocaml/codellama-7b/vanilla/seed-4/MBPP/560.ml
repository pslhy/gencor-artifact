let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list = 
    (* helper function that checks if an element is already included in the union *)
    let rec member_of_union (x : int) (union : int list) : bool = 
        match union with
        | [] -> false
        | hd :: tl ->
            if x = hd then true
            else member_of_union x tl
    
    in
    (* main function that performs the union *)
    let rec union_elems (test_tup1 : int list) (test_tup2 : int list) : int list = 
        match test_tup1 with
        | [] -> test_tup2
        | hd :: tl -> 
            if member_of_union hd test_tup2 then union_elems tl test_tup2
            else hd :: union_elems tl test_tup2
    
    in
    union_elems test_tup1 test_tup2 |> List.sort compare

let _ = union_elements [1; 2; 3] [4; 5; 1]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
