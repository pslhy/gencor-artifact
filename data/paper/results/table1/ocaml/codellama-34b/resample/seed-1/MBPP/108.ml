(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    let rec aux num1 num2 num3 acc =
        match num1, num2, num3 with
        | [], [], [] -> acc
        | n1 :: t1, [], t2@[m, r] -> aux t1 (t2@[n1]) t3 (acc @[n1])
        | n1 :: t1, [], t2@[] -> aux t1 (t2@[n1, r]) t3 (acc @[n1, r])
        | empty, n2 :: t2, empty -> aux empty (num2 @[n1]) t3 (acc @[n2])
        | empty, n2 :: t2, n3 :: t3 -> aux empty num2 t3 (acc @[n2])
        | empty, empty, n3 :: t3 -> aux empty num2 t3 (acc @[n3])
        | num1, num2, empty -> aux num1 num2 t3 acc
        | num1, empty, num3 -> aux num1 t2 t3 (acc @[num2])
        | empty, num2, num3 -> aux t1 t2 t3 (acc @[num2])
    in
    aux num1 num2 num3 []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:27: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    let rec aux num1 num2 acc =
        match num1, num2 with
        | [], [] -> []
        | n1 :: t1, [] -> aux t1 [] (n1 :: acc)
        | [], n2 :: t2 -> aux [] t2 (n2 :: acc)
        | n1 :: t1, n2 :: t2 ->
            if n1 <= n2 then
                aux t1 (n2 :: acc) (n1 :: acc)
            else
                aux t1 [] (n1 :: acc)
    in
    aux num1 num2 num3

let rec drop_duplicates (l : int list) : int list =
    match l with
    | [] -> []
    | x :: xs ->
        if List.mem x xs then
            drop_duplicates xs
        else
            x :: drop_duplicates xs

let rec sort (l : int list) : int list =
    match l with
    | [] -> []
    | x :: xs ->
        let smaller = List.filter (fun y -> y < x) xs in
        let equal = List.filter (fun y -> y = x) xs in
        let larger = List.filter (fun y -> y > x) xs in
        sort smaller @ equal @ sort larger

let rec zip (l1 : int list) (l2 : int list) : (int * int) list =
    match l1, l2 with
    | [], [] -> []
    | x :: xs, y :: ys -> (x, y) :: zip xs ys
    | _ -> invalid_arg "Lists have different lengths"

let rec unzip (l : (int * int) list) : int list * int list =
    match l with
    | [] -> [], []
    | (x, y) :: xs ->
        let (fst, snd) = unzip xs in
        (x :: fst, y :: snd)

let rec transpose (l : int list list) : int list list =
    match l with
    | [] -> []
    | x :: xs ->
        let (h, t) = unzip x in
        h :: transpose t

let rec count_all_occurences (l : int list) (k : int) : int =
    match l with
    | [] -> 0
    | x :: xs ->
        if x = k then
            1 + count_all_occurences xs k
        else
            count_all_occurences xs k

let rec count_head_occurences (l : int list) (k : int) : int =
    match l with
    | [] -> 0
    | x :: xs ->
        if x = k then
            1 + count_head_occurences xs k
        else
            0

let rec max_element (l : int list) : int =
    match l with
    | [] -> 0
    | x :: xs -> max x (max_element xs)

let rec min_element (l : int list) : int =
    match l with
    | [] -> 0
    | x :: xs -> min x (min_element xs)

let rec occurs (l : int list) (k : int) : bool =
    match l with
    | [] -> false
    | x :: xs ->
        if x = k then
            true
        else
            occurs xs k

