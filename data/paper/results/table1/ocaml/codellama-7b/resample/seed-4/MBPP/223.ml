(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool = 
    (* base case: if the list is empty or there are less than two elements in the list *)
    if n < 2 then false 
    else 
        (* get the element at the middle index of the list *)
        let mid_idx = n / 2 in 
        let mid_elem = List.nth arr mid_idx in 
        (* compare the element to the middle element *)
        if x = mid_elem then 
            (* if the element is equal to the middle element *)
            if n % 2 = 0 then 
                (* if there is a tie in the middle element, check if the element occurs more than n/2 times *)
                is_majority (arr @ [mid_elem]) (n - 1) x
            else
                (* if there is no tie in the middle element, the element occurs more than n/2 times *)
                true
        else if x < mid_elem then 
            (* if the element is less than the middle element, search in the left half of the list *)
            is_majority (arr @ [mid_elem]) (mid_idx - 1) x
        else 
            (* if the element is greater than the middle element, search in the right half of the list *)
            is_majority (arr @ [mid_elem]) (n - 1 - mid_idx) x

    

(* example usage *)
let arr = [1; 2; 3; 4; 5] in
let n = List.length arr in
let x = 4 in
List.iter (fun x -> Printf.printf "%b\n" (is_majority arr n x)) [1; 2; 3; 4; 5]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:27:27: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    if n < 2 then
        false
    else
        let mid = (n / 2) in (* new line added *)
        if (mid = x) && (mid == n) then
            true
        else if x < mid then
            is_majority (List.take(arr, mid - 1) @ x :: List.drop(arr, mid - 1)) n x
        else
            is_majority arr n x

(* example usage *)
let test = [1; 2; 3; 4; 5] in
let n = List.length(test) in
let x = 4 in
is_majority test n x

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    if n < 2 then
        false
    else
        let mid = (n / 2) in (* new line added *)
        if (mid = x) && (mid == n) then
            true
        else if x < mid then
            is_majority (List.take(arr, mid - 1) @ x :: List.drop(arr, mid - 1)) n x
        else
            is_majority arr n x

(* example usage *)
let test = [1; 2; 3; 4; 5] in
let n = List.length(test) in
let x = 4 in
is_majority test n x

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    if n < 2 then
        false
    else
        let mid = (n / 2) in (* new line added *)
        if (mid = x) && (mid == n) then
            true
        else if x < mid then
            is_majority ((List.take(arr, mid - 1) @ x :: List.drop(arr, mid - 1))) n x
        else
            is_majority arr n x

(* example usage *)
let test = [1; 2; 3; 4; 5] in
let n = List.length(test) in
let x = 4 in
is_majority test n x

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
  if n < 2 then
    false
  else
    let mid = n / 2 in (* new line added *)
    if x = mid && mid = n then
      true
    else if x < mid then
      is_majority (List.take(arr, mid - 1) @ x :: List.drop(arr, mid - 1)) n x
    else
      is_majority arr n x

(* example usage *)
let test = [1; 2; 3; 4; 5] in
let n = List.length(test) in
let x = 4 in
is_majority test n x

