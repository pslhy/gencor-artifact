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
  let n = List.length arr in
  if n = 0 then true
  else 
    let rec find_breakpoint lst =
      match lst with
      | [] -> None
      | [x] -> None
      | h::t -> if h > List.hd t then Some (h, t) else find_breakpoint t
    in
    match find_breakpoint arr with
    | None -> true
    | Some (break_val, break_lst) ->
      let sorted_break_lst = List.sort compare break_lst in
      let merged_lst = sorted_break_lst @ (List.take arr (n - List.length sorted_break_lst)) in
      List.for_all2 (fun x y -> x <= y) merged_lst (List.tl merged_lst)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:44: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_one_ball (arr : int list) : bool = 
  let n = List.length arr in
  if n = 0 then true
  else 
    let rec find_breakpoint lst =
      match lst with
      | [] -> None
      | [x] -> None
      | h::t -> if h > List.hd t then Some (h, t) else find_breakpoint t
    in
    match find_breakpoint arr with
    | None -> true
    | Some (break_val, break_lst) ->
      let sorted_break_lst = List.sort compare break_lst in
      let merged_lst = sorted_break_lst @ List.tl arr in
      List.for_all2 (fun x y -> x <= y) merged_lst (List.tl merged_lst)

