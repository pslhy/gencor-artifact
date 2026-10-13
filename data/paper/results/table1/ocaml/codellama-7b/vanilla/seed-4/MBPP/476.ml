let rec big_sum (nums : int list) : int = 
    match nums with 
      head :: tail -> 
          (match tail with 
          [] -> head + big_sum tail 
          tail :: [] -> head + big_sum tail 
          list -> list 
          head :: tail -> head + big_sum tail 
    List.hd nums = List.tl nums
  | _ -> failwith "Error: The list is empty." 
       
  let rec small_sum (nums : int list) : int = 
    match nums with 
      head :: tail -> 
          (match tail with 
          [] -> head + small_sum tail 
          tail :: [] -> head + small_sum tail 
          list -> list 
          head :: tail -> head + small_sum tail 
    List.hd nums = List.tl nums
  | _ -> failwith "Error: The list is empty." 
 
  let find_sum (nums : int list) : int = 
    match nums with 
      [] -> failwith "Error: The list is empty." 
      [head] -> head 
      head :: tail -> head + find_sum tail 
  | _ -> 
      let nums = List.sort nums in 
      big_sum (List.tl nums) + small_sum (List.tl nums) 
     


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
