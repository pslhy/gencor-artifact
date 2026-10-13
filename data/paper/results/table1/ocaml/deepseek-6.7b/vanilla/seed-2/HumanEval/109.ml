let rec move_one_ball (arr : int list) : bool =
  let rec check_sorted arr =
    match arr with
    | [] -> true
    | [_] -> true
    | x1::(x2::_ as tl) -> x1 <= x2 && check_sorted tl
  in
  let rotate arr =
    let last_element = List.hd (List.rev arr) in
    last_element :: (List.rev (List.tl (List.rev arr)))
  in
  let rec check_all_rotations arr count =
    if count = List.length arr then false
    else if check_sorted arr then true
    else check_all_rotations (rotate arr) (count + 1)
  in
  check_all_rotations arr 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
