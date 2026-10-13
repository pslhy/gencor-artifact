let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
  let trim_list lst =
    let rec helper lst acc =
      if List.length acc >= k then
        List.rev acc
      else
        match lst with
          | [] -> List.rev acc
          | x::xs -> helper xs (x::acc)
    in helper lst []
  in List.map trim_list test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
