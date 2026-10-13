let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
  let f (a,_: string * int) (b,_: string * int) : int =
    if a = b then 0 else if a > b then 1 else -1
  in 
  List.sort f dict1; 
  let rec check neo_lst dict1 =
    match dict1 with 
    | [] -> neo_lst
    | h::t -> 
        let _,val_h = h in
        let rec find_val list to_ret=
          match list with
          | [] -> find_val (t@ neo_lst) [h]
          | h1::t1-> 
              let _, val_h1 = h1 in
              if  val_h = val_h1 then find_val t1 (to_ret@[h1])
              else check neo_lst list
        in 
        find_val dict1 []
  in check [] dict1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
