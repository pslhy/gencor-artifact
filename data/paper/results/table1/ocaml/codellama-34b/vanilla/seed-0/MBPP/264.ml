let rec dog_age (h_age : int) : int =
  if h_age < 1 then 15 else
    if h_age < 2 then 24 else
      if h_age < 3 then 42 else
        if h_age < 4 then 60 else
          if h_age < 5 then 76 else
            if h_age < 6 then 94 else
              if h_age < 7 then 110 else
                if h_age < 8 then 128 else
                  if h_age < 9 then 146 else
                    164

(* Example usage: *)
let dog_age_in_dog_years = dog_age 3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate a dog's age in dog's years. *)
