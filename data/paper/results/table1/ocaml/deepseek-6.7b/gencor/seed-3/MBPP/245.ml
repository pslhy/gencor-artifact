
let rec max_sum (arr : int list) : int =
  let len = List.length arr in
  let rec loop inc dec =
    function
    | [] -> max (List.length inc) (List.length dec)
    | h::t ->
        let new_inc =
          if inc = [] || h >= List.hd (List.rev inc)
          then h::inc
          else List.rev_map (fun x -> if x <= h then x else h) (List.rev inc)
        in
        let new_dec =
          if dec = [] || h <= List.hd (List.rev dec)
          then h::dec
          else List.rev_map (fun x -> if x >= h then x else h) (List.rev dec)
        in
        loop new_inc new_dec t
  in loop [] [] arr
  |> ( * ) 2 |> ( - ) len

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
