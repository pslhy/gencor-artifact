(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    if (k <= 1) then begin
        let (result, _) = reverse_Array_Acc(input, [])
        result
    end
    else begin
        let last_index = (k - 1)
        let (acc, _) = reverse_Array_Acc(input, [])
        let reversed_first_part = List.take(k, acc)
        let reversed_second_part = List.drop(k, acc)
        reversed_first_part @ reversed_second_part;
    end;

and reverse_Array_Acc (input : int list) (acc : int list) : (int list) * (int list) =
    match input with
    | [] -> (acc, [])
    | h :: t -> reverse_Array_Acc(t, h :: acc)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    if (k <= 1) then begin
        let (result, _) = reverse_Array_Acc(input, [])
        result
    end
    else begin
        let last_index = (k - 1)
        let (acc, _) = reverse_Array_Acc(input, [])
        let reversed_first_part = List.take(k, acc)
        let reversed_second_part = List.drop(k, acc)
        reversed_first_part @ reversed_second_part;
    end;;

let reverse_Array_Acc (input : int list) (acc : int list) : int list =
    match input with
    | [] -> acc
    | h :: t -> reverse_Array_Acc(t, h :: acc);;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    if k <= 1 then
        let (result, _) = reverse_Array_Acc(input, [])
        result
    else
        let last_index = (k - 1)
        let (acc, _) = reverse_Array_Acc(input, [])
        let reversed_first_part = List.take(k, acc)
        let reversed_second_part = List.drop(k, acc)
        reversed_first_part @ reversed_second_part;;

let reverse_Array_Acc (input : int list) (acc : int list) : int list =
    match input with
    | [] -> acc
    | h :: t -> reverse_Array_Acc(t, h :: acc);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    if k <= 1 then
        let (result, _) = reverse_Array_Acc(input, [])
        result
    else
        let last_index = (k - 1)
        let (acc, _) = reverse_Array_Acc(input, [])
        let reversed_first_part = List.take(k, acc)
        let reversed_second_part = List.drop(k, acc)
        reversed_first_part @ reversed_second_part;;

let reverse_Array_Acc (input : int list) (acc : int list) : int list =
    match input with
    | [] -> acc
    | h :: t -> reverse_Array_Acc(t, h :: acc);;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    if k <= 1 then
        let result = reverse_Array_Acc(input, []) in
        result
    else
        let last_index = k - 1 in
        let (acc, _) = reverse_Array_Acc(input, []) in
        let reversed_first_part = List.take(k, acc) in
        let reversed_second_part = List.drop(k, acc) in
        reversed_first_part @ reversed_second_part;;

let reverse_Array_Acc (input : int list) (acc : int list) : int list =
    match input with
    | [] -> acc
    | h :: t -> reverse_Array_Acc(t, h :: acc);;

