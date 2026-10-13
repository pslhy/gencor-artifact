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
| [x] -> true
| _ ->
   let sorted_arr = List.sort compare arr in
   let n = List.length arr in
   let rec right_shift (arr : int list) (n : int) : int list =
      match n with
      | 0 -> arr
      | _ ->
         let first_elem = List.nth arr (n - 1) in
         let rest_arr = List.take arr (n - 1) @ [first_elem] in
         right_shift rest_arr (n - 1)
   in
   let sorted_arr' = right_shift sorted_arr n in
   arr = sorted_arr'

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:25: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_one_ball (arr : int list) : bool =
  match arr with
  | [] -> true
  | [x] -> true
  | head :: tail ->
      let rec forward (arr : int list) (n : int) : int list =
        match arr with
        | [] -> []
        | [x] -> [x]
        | head :: tail ->
            if n > 1 then
              head :: forward (tail, n - 1)
            else
              let taken_head = List.hd tail in
              let taken_rest = List.tl tail in
              taken_rest @ [taken_head]
      in
      if List.length tail > 0 then
        let right_part = forward tail (List.length tail) in
        let left_part = List.take (List.length arr - List.length right_part) tail
        right_part @ left_part
      else
        false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_one_ball (arr : int list) : bool =
  match arr with
  | [] -> true
  | [x] -> true
  | head :: tail ->
      let rec forward (arr : int list) (n : int) : int list =
        match arr with
        | [] -> []
        | [x] -> [x]
        | head :: tail ->
            if n > 1 then
              head :: forward (tail, n - 1)
            else
              let taken_head = List.hd tail in
              let taken_rest = List.tl tail in
              taken_rest @ [taken_head]
      in
      if List.length tail > 0 then
        let right_part = forward tail (List.length tail) in
        let left_part = [head] in
        left_part @ right_part
      else
        false

