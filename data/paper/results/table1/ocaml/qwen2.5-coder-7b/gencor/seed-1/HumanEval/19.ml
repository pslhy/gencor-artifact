
let rec sort_numbers (numbers : string) : string = 
  let number_map = function
    | "zero" -> 0
    | "one" -> 1
    | "two" -> 2
    | "three" -> 3
    | "four" -> 4
    | "five" -> 5
    | "six" -> 6
    | "seven" -> 7
    | "eight" -> 8
    | "nine" -> 9
    | _ -> invalid_arg "invalid number" in
    
  let sorted_numbers = 
    numbers
    |> String.split_on_char ' '
    |> List.map number_map
    |> List.sort compare
    |> List.map string_of_int ;
  
  String.concat " " (List.map (number_map |> Printf.sprintf "%s") (List.map int_of_string (List.map string_of_int (List.sort compare (List.map number_map (String.split_on_char ' ' numbers)))))) 
  
  
  String.concat " " (List.map string_of_int (List.sort compare (List.map number_map (String.split_on_char ' ' numbers))))
  (*List.map (number_map |> Printf.sprintf "%s") (List.map int_of_string (List.map string_of_int (List.sort compare (List.map number_map (String.split_on_char ' ' numbers))))))
*)  
(*
  let rec rec_rec (list : string list) (sorted : string list) : string list =
    match list with
    | [] -> sorted
    | x :: xs -> 
        let insert num lst =
          match lst with
          | [] -> [num]
          | y :: ys -> if num <= y then num :: y :: ys else y :: (insert num ys) in
        rec_rec xs (insert x sorted)
  
  let sorted_numbers = rec_rec (List.map number_map (String.split_on_char ' ' numbers)) []
  *)
  
  (*
  let sorted_numbers' = 
    let rec insertion_sort lst sorted =
      match lst with
      | [] -> sorted
      | x :: xs -> 
          let insert num lst =
            match lst with
            | [] -> [num]
            | y :: ys -> if num <= y then num :: y :: ys else y :: (insert num ys) in
          insertion_sort xs (insert x sorted)
    in
    insertion_sort (List.map number_map (String.split_on_char ' ' numbers)) []
  *)
  
  (*
  let sorted_numbers'' = 
    let rec merge_sort lst =
      let split lst =
        let rec split' lst1 lst2 =
          match lst with
          | [] -> (lst1, lst2)
          | x :: y :: xs -> split' (x :: lst1) (y :: lst2) xs
          | x :: _ -> (x :: lst1, [])
        in split' [] [] lst in
      
      let merge lst1 lst2 =
        let rec merge' lst1 lst2 acc =
          match (lst1, lst2) with
          | ([], []) -> List.rev acc
          | ([], y :: ys) -> List.rev_append acc (y :: ys)
          | (x :: xs, []) -> List.rev_append acc (x :: xs)
          | (x :: xs, y :: ys) when x <= y -> merge' xs ys (y :: acc)
          | (x :: xs, y :: ys) -> merge' xs ys (x :: acc)
        in merge' lst1 lst2 []
      
      in
      match split lst with
      | ([], []) -> []
      | (single, []) -> single
      | ([], _) -> []
      | (_, [single]) -> single
      | (l1, l2) -> merge (merge_sort l1) (merge_sort l2)
    in
    merge_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let sorted_numbers''' = 
    let rec quick_sort lst =
      if List.length lst <= 1 then lst
      else
        let pivot = List.nth lst (List.length lst / 2) in
        quick_sort (List.filter (fun x -> x < pivot) lst) @ [pivot] @ quick_sort (List.filter (fun x -> x > pivot) lst)
    in
    quick_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let rec insert num lst =
    match lst with
    | [] -> [num]
    | h :: tl -> if num <= h then num :: h :: tl else h :: (insert num tl)
  
  let rec insertion_sort lst sorted =
    match lst with
    | [] -> sorted
    | x :: xs -> insertion_sort xs (insert x sorted)
  
  let sorted_numbers = insertion_sort (List.map number_map (String.split_on_char ' ' numbers)) []
  *)
  
  (*
  let rec merge_sort lst =
    let split lst =
      let rec split' lst1 lst2 =
        match lst with
        | [] -> (lst1, lst2)
        | x :: y :: xs -> split' (x :: lst1) (y :: lst2) xs
        | x :: _ -> (x :: lst1, [])
      in split' [] [] lst in
      
    let merge lst1 lst2 =
      let rec merge' lst1 lst2 acc =
        match (lst1, lst2) with
        | ([], []) -> List.rev acc
        | ([], y :: ys) -> List.rev_append acc (y :: ys)
        | (x :: xs, []) -> List.rev_append acc (x :: xs)
        | (x :: xs, y :: ys) when x <= y -> merge' xs ys (y :: acc)
        | (x :: xs, y :: ys) -> merge' xs ys (x :: acc)
      in merge' lst1 lst2 []
      
    in
    match split lst with
    | ([], []) -> []
    | (single, []) -> single
    | ([], _) -> []
    | (_, [single]) -> single
    | (l1, l2) -> merge (merge_sort l1) (merge_sort l2)
  
  let sorted_numbers = merge_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let rec quick_sort lst =
    if List.length lst <= 1 then lst
    else
      let pivot = List.nth lst (List.length lst / 2) in
      quick_sort (List.filter (fun x -> x < pivot) lst) @ [pivot] @ quick_sort (List.filter (fun x -> x > pivot) lst)
  
  let sorted_numbers = quick_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let rec selection_sort lst sorted =
    match lst with
    | [] -> sorted
    | x :: xs -> 
        let min_rem = List.fold_left (fun acc y -> if y < acc then y else acc) x xs in
        let remove_min lst min_val =
          let rec remove_min' lst min_val acc =
            match lst with
            | [] -> acc
            | x :: xs -> if x = min_val then acc else remove_min' xs min_val (x :: acc)
          in remove_min' lst min_val []
        in
        let new_sorted = min_val :: sorted in
        let new_lst = remove_min lst min_val in
        selection_sort new_lst new_sorted
  
  let sorted_numbers = selection_sort (List.map number_map (String.split_on_char ' ' numbers)) []
  *)
  
  (*
  let rec bubble_sort lst =
    let rec bubble lst swapped =
      match lst with
      | [] | [_] -> lst
      | x :: y :: xs -> if x > y then bubble (y :: x :: xs) true else bubble (x :: y :: xs) swapped
      in
    let rec sort lst sorted =
      match lst with
      | [] -> sorted
      | _ -> sort (bubble lst false) sorted
    in
    sort lst []
  
  let sorted_numbers = bubble_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let rec insertion_sort lst sorted =
    match lst with
    | [] -> sorted
    | x :: xs ->
        let insert num lst =
          match lst with
          | [] -> [num]
          | y :: ys -> if num <= y then num :: y :: ys else y :: (insert num ys)
        in
        insertion_sort xs (insert x sorted)
  
  let sorted_numbers = insertion_sort (List.map number_map (String.split_on_char ' ' numbers)) []
  *)
  
  (*
  let rec merge_sort lst =
    let split lst =
      let rec split' lst1 lst2 =
        match lst with
        | [] -> (lst1, lst2)
        | x :: y :: xs -> split' (x :: lst1) (y :: lst2) xs
        | x :: _ -> (x :: lst1, [])
      in split' [] [] lst in
      
    let merge lst1 lst2 =
      let rec merge' lst1 lst2 acc =
        match (lst1, lst2) with
        | ([], []) -> List.rev acc
        | ([], y :: ys) -> List.rev_append acc (y :: ys)
        | (x :: xs, []) -> List.rev_append acc (x :: xs)
        | (x :: xs, y :: ys) when x <= y -> merge' xs ys (y :: acc)
        | (x :: xs, y :: ys) -> merge' xs ys (x :: acc)
      in merge' lst1 lst2 []
      
    in
    match split lst with
    | ([], []) -> []
    | (single, []) -> single
    | ([], _) -> []
    | (_, [single]) -> single
    | (l1, l2) -> merge (merge_sort l1) (merge_sort l2)
  
  let sorted_numbers = merge_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let rec quick_sort lst =
    if List.length lst <= 1 then lst
    else
      let pivot = List.nth lst (List.length lst / 2) in
      quick_sort (List.filter (fun x -> x < pivot) lst) @ [pivot] @ quick_sort (List.filter (fun x -> x > pivot) lst)
  
  let sorted_numbers = quick_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let rec selection_sort lst sorted =
    match lst with
    | [] -> sorted
    | x :: xs -> 
        let min_rem = List.fold_left (fun acc y -> if y < acc then y else acc) x xs in
        let remove_min lst min_val =
          let rec remove_min' lst min_val acc =
            match lst with
            | [] -> acc
            | x :: xs -> if x = min_val then acc else remove_min' xs min_val (x :: acc)
          in remove_min' lst min_val []
        in
        let new_sorted = min_val :: sorted in
        let new_lst = remove_min lst min_val in
        selection_sort new_lst new_sorted
  
  let sorted_numbers = selection_sort (List.map number_map (String.split_on_char ' ' numbers)) []
  *)
  
  (*
  let rec bubble_sort lst =
    let rec bubble lst swapped =
      match lst with
      | [] | [_] -> lst
      | x :: y :: xs -> if x > y then bubble (y :: x :: xs) true else bubble (x :: y :: xs) swapped
      in
    let rec sort lst sorted =
      match lst with
      | [] -> sorted
      | _ -> sort (bubble lst false) sorted
    in
    sort lst []
  
  let sorted_numbers = bubble_sort (List.map number_map (String.split_on_char ' ' numbers))
  *)
  
  (*
  let rec insertion_sort lst sorted =
    match lst with
    | [] -> sorted
    | x :: xs ->
        let insert num lst =
          match lst with
          | [] -> [num]
          | y :: ys -> if num <= y then num :: y :: ys else y :: (insert num ys)
        in
        insertion_sort xs (insert x sorted)
  
  let sorted_numbers = insertion_sort (List.map number_map (String.split_on_char ' ' numbers)) []
  *)
  
  (*
  let rec merge_sort lst =
    let split lst =
      let rec split' lst1 lst2 =
        match lst with
        | [] -> (lst1, lst2)
        | x :: y :: xs -> split' (x :: lst1) (y :: lst2) xs
        | x :: _ -> (x :: lst1, [])
      in split' [] [] lst in
      
    let merge lst1 lst2 =
      let rec merge' lst1 lst2 acc =
        match (lst1, lst2) with
        | ([], []) -> List.rev acc
        | ([], y :: ys) -> List.rev_append acc (y :: ys)
        | (x :: xs, []) -> List.rev_append acc (x :: xs)
        | (x :: xs, y :: ys) when x <= y -> merge' xs ys (y :: acc)
        | (x :: xs, y :: ys) -> merge' xs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input is a space-delimited string of numberals from 'zero' to 'nine'. *)
(*     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'. *)
(*     Return the string with numbers sorted from smallest to largest *)
(*     >>> sort_numbers "three one five" *)
(*     "one three five" *)
