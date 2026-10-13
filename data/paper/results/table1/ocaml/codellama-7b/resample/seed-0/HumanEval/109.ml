(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     We have a list 'arr' of N integers arr[1], arr[2], ..., arr[N].The *)
(*     numbers in the list will be randomly ordered. Your task is to determine if *)
(*     it is possible to get a list sorted in non-decreasing order by performing *)
(*     the following operation on the given list: *)
(*     You are allowed to perform right shift operation any number of times. *)
(*     One right shift operation means shifting all elements of the list by one *)
(*     position in the right direction. The last element of the list will be moved to *)
(*     the starting position in the list i.e. 0th index. *)
(*     If it is possible to obtain the sorted list by performing the above operation *)
(*     then return true else return false. *)
(*     If the given list is empty then return true. *)
(*     Note: The given list is guaranteed to have unique elements. *)
(*     For Example: *)
(*     >>> move_one_ball [3; 4; 5; 1; 2] *)
(*     true *)
(*     Explanation: By performin 2 right shift operations, non-decreasing order can *)
(*     be achieved for the given list. *)
(*     >>> move_one_ball [3; 5; 4; 1; 2] *)
(*     false *)
(*     Explanation:It is not possible to get non-decreasing order for the given *)
(*     list by performing any number of right shift operations. *)
let rec move_one_ball (arr : int list) : bool =
  match arr with
  | [] -> true
  | _ ->
    let rec find_max (l : int list) (n : int) : int =
      match l with
      | [] -> n
      | h :: t -> if h > n then find_max t h else find_max t n
    in
    let max_val = find_max arr 0 in
    let rec right_shift (l : int list) (n : int) : int list =
      match l with
      | [] -> []
      | h :: t -> if h = max_val then t @ [h] else t @ [h - 1]
    in
    if List.mem max_val arr then
      if List.length (right_shift arr 0) = N then true
      else if List.length (right_shift arr 0) < N then false
    else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:44: Unbound constructor "N" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_one_ball (arr : int list) : bool =
  match arr with
  | [] -> false
  | h :: t ->
    let n = List.length t in
    if h < n then
      move_one_ball (t @ [h] @ t)
    else
      false

