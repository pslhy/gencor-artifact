
let rec re_arrange_array (arr : int list) (n : int) : int list =
    let rec partition_neg_pos (neg_acc : int list) (pos_acc : int list) : int list * int list =
        match neg_acc with
        | [] -> (neg_acc, pos_acc)
        | x :: xs when x < 0 ->
            let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
            (x :: new_neg_acc, new_pos_acc)
        | x :: xs ->
            let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
            (neg_acc, x :: new_pos_acc)
    in
    match arr with
    | [] -> []
    | x :: xs ->
        let (neg_acc, pos_acc) = partition_neg_pos [] [] in
        let (neg_first, pos_first) = List.split (List.rev neg_acc) (List.rev pos_acc) in
        let left = List.concat (List.map (List.rev) neg_first) in
        let right = List.concat (List.map (List.rev) pos_first) in
        let (left, right) = List.split (List.map (fun x -> x) (List.rev left)) (List.map (fun x -> x) (List.rev right)) in
        left @ (x :: (List.map (fun x -> x) right))

(* Tests *)
let arr1 = [0; -1; 2; 3; -4; 5];;
re_arrange_array arr1 4;;
let arr2 = [-1; -2; 3; 4; -5];;
re_arrange_array arr2 4;;
let arr3 = [0; 1; 2; 3; 4; 5];;
re_arrange_array arr3 3;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
