
let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> failwith "The list is empty"
  | x :: xs ->
      if xs = [] then 0
      else
        let odd_index = ref 0 in
        let find_odd () =
          if !odd_index = 0 && x mod 2 = 1 then
            !odd_index
          else
            incr odd_index;
            if !odd_index < List.length list1 then
              !odd_index
            else
              -1
        in
        let odd_index = find_odd () in
        if odd_index < 0 then 0 else List.nth list1 odd_index - List.hd list1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
