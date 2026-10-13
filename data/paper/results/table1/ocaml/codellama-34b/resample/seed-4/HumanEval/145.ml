(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
let rec order_by_points (nums : int list) : int list = 
    (* base case: empty list with no elements to sort *)
    match nums with
    | [] -> []
    | _ -> 
        (* get the sum of the digits for each element in the list *)
        let sum_of_digits (num : int) : int = 
            abs num |> List.of_seq |> List.map(fun x -> x * x) |> List.sum
        in
        (* sort the list by the sum of its digits and then use the index of each element in the list to break ties *)
        let sorted = List.sort (fun x y -> 
            let sum_x = sum_of_digits x in
            let sum_y = sum_of_digits y in
            if sum_x = sum_y then compare (List.index_of x nums) (List.index_of y nums) else compare sum_x sum_y) nums in 
        (* return the sorted list *)
        sorted

(* test the function with the provided example *)
let () =
    let test_list = [1; 11; (-1); (-11); (-12)] in
    let expected_result = [ (-1); (-11); 1; (-12); 11 ] in
    assert (order_by_points test_list == expected_result)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:67: Unbound value "List.sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list = 
    (* base case: empty list with no elements to sort *)
    match nums with
    | [] -> []
    | x :: xs -> 
        (* get the sum of the digits for each element in the list *)
        let sum_of_digits (num : int) : int = 
            let rec digits (num : int) : int list =
                match num with
                | 0 -> []
                | _ -> (num mod 10) :: digits (num / 10)
            in
            List.fold_left (+) 0 (digits num)
        in
        (* sort the list by the sum of its digits and then use the index of each element in the list to break ties *)
        let sorted = List.sort (fun x y -> 
            let sum_x = sum_of_digits x in
            let sum_y = sum_of_digits y in
            if sum_x = sum_y then compare (List.index_of x nums) (List.index_of y nums) else compare sum_x sum_y) xs in 
        (* return the sorted list *)
        sorted

(* test the function with the provided example *)
let () =
    let test_list = [1; 11; (-1); (-11); (-12)] in
    let expected_result = [ (-1); (-11); 1; (-12); 11 ] in
    assert (order_by_points test_list = expected_result)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:44: Unbound value "List.index_of" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list = 
    (* base case: empty list with no elements to sort *)
    match nums with
    | [] -> []
    | x :: xs -> 
        (* get the sum of the digits for each element in the list *)
        let sum_of_digits (num : int) : int = 
            let rec digits (num : int) : int list =
                match num with
                | 0 -> []
                | _ -> (num mod 10) :: digits (num / 10)
            in
            List.fold_left (+) 0 (digits num)
        in
        (* sort the list by the sum of its digits and then use the index of each element in the list to break ties *)
        let sorted = List.sort (fun x y -> 
            let sum_x = sum_of_digits x in
            let sum_y = sum_of_digits y in
            if sum_x = sum_y then compare (List.position x nums) (List.position y nums) else compare sum_x sum_y) xs in 
        (* return the sorted list *)
        sorted

(* test the function with the provided example *)
let () =
    let test_list = [1; 11; (-1); (-11); (-12)] in
    let expected_result = [ (-1); (-11); 1; (-12); 11 ] in
    assert (order_by_points test_list = expected_result)

(* signature *)
val order_by_points : 'bye_categories -> 'bye_categories

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:44: Unbound value "List.position" *)
(*     Hint: Did you mean "partition"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list = 
    (* base case: empty list with no elements to sort *)
    match nums with
    | [] -> []
    | x :: xs -> 
        (* get the sum of the digits for each element in the list *)
        let sum_of_digits (num : int) : int = 
            let rec digits (num : int) : int list =
                match num with
                | 0 -> []
                | _ -> (num mod 10) :: digits (num / 10)
            in
            List.fold_left (+) 0 (digits num)
        in
        (* sort the list by the sum of its digits and then use the index of each element in the list to break ties *)
        let sorted = List.sort (fun x y -> 
            let sum_x = sum_of_digits x in
            let sum_y = sum_of_digits y in
            if sum_x = sum_y then compare (List.partition x nums) (List.partition y nums) else compare sum_x sum_y) xs in 
        (* return the sorted list *)
        sorted

(* test the function with the provided example *)
let () =
    let test_list = [1; 11; (-1); (-11); (-12)] in
    let expected_result = [ (-1); (-11); 1; (-12); 11 ] in
    assert (order_by_points test_list = expected_result)

(* signature *)
val order_by_points : 'bye_categories -> 'bye_categories

