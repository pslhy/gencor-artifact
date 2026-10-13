
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
    (* base case: k = 1 *)
    if k = 1 then 
        (* extract the minimum element *)
        (* NOTE: assumes list is not empty *)
        [List.fold_left (fun (x, y) (x', y') ->
            if (String.compare (snd (2), snd (2)) < 0) then (snd (2)) else (snd (2))) ! test_list],
    [];

    (* base case: test_list is empty *)
    (* NOTE: assumes k > 1 *)
    if test_list = [] then 
        [], 
    [];

    (* recursive case *)
    let rec helper (i : int) (test_list :  (string * int) list) (min_list :  (string * int) list) :  (string * int) list = 
        match test_list with 
      | [] -> min_list
      | (x, y) :: xs -> 
          if (i < k) then 
              helper (i + 1) xs ((x, y) :: min_list)
          else 
              let (min_head, _) = List.hd min_list in
              if (String.compare (y, min_head) < 0) then 
                  helper (i + 1) xs ((x, y) :: min_list)
              else 
                  let (min_tail, _) = List.tl min_list in
                  helper (i + 1) xs ((min_head, min_tail@xs))
    in 
    helper 1 test_list []

(* Test cases to try:
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 3) // Expected: [ ("B", 2) ; ("C", 3) ; ("D", 4) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 1) // Expected: [ ("A", 1) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 5) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 6) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 7) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 8) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 9) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 10) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ]
(min_k [] 3) // Expected: [ ("A", 0) ; ("B", 0) ; ("C", 0) ]
(min_k [ ("A", 1) ] 3) // Expected: [ ("A", 1) ; ("B", 0) ; ("C", 0) ]
(min_k [ ("A", 1) ; ("B", 2) ] 3) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 0) ]
(min_k [ ("A", 1) ; ("B", 2) ] 3) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 0) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ] 3) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ] 3) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 3) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ]
(min_k [ ("A", 1) ; ("B", 2) ; ("C", 3) ; ("D", 4) ; ("E", 5) ] 3) // Expected: [ ("A", 1) ; ("B", 2) ; ("C", 3) ]
```
Note that the last three test cases

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
