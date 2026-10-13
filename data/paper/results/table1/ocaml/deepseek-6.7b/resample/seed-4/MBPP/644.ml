(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  let rec rev_List l acc =
    match l with
    | [] -> acc
    | h::t -> rev_List t (h::acc)
  in
  match input with
  | [] -> []
  | _ -> if k > List.length input then input else rev_List (List.rev (List.rev_range 0 k input)) (List.rev (List.rev_range k (List.length input) input))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:71: Unbound value "List.rev_range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  let rec rev_List l acc =
    match l with
    | [] -> acc
    | h::t -> rev_List t (h::acc)
  in
  match input with
  | [] -> []
  | _ -> if k > List.length input then input else List.append (rev_List (List.rev (List.rev_range 0 k input)) []) (List.rev_range k (List.length input) input)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:84: Unbound value "List.rev_range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  let rec rev_List l acc =
    match l with
    | [] -> acc
    | h::t -> rev_List t (h::acc)
  in
  match input with
  | [] -> []
  | _ -> if k > List.length input then input else List.append (rev_List (List.rev (List.rev_segment 0 k input)) []) (List.rev_segment k (List.length input - 1) input)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:84: Unbound value "List.rev_segment" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  let rev_segment lst start finish =
    let rev_seg_inner lst acc start finish =
      match lst with
      | [] -> acc
      | h::t -> if start > 0 then rev_seg_inner t (h::acc) (start-1) (finish-1)
                else List.rev (rev_seg_inner t acc 0 (finish-1))
    in rev_seg_inner lst [] start finish
  in
  match input with
  | [] -> []
  | _ -> if k > List.length input then input else 
           rev_segment input 0 k @ rev_segment input k (List.length input)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:35: Unbound value "rev_seg_inner" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 3 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  let rec rev_segment lst start finish =
    let rec rev_seg_inner lst acc start finish =
      match lst with
      | [] -> acc
      | h::t -> if start > 0 then rev_seg_inner t (h::acc) (start-1) (finish-1)
                else List.rev (rev_seg_inner t acc 0 (finish-1))
    in rev_seg_inner lst [] start finish
  in
  match input with
  | [] -> []
  | _ -> if k > List.length input then input else 
           rev_segment input 0 k @ rev_segment input k (List.length input)

